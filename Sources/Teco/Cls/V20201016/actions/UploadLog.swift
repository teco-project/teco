//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cls {
    /// UploadLog请求参数结构体
    public struct UploadLogRequest: TCRequestModel {
        /// 主题id
        public let topicId: String

        /// 根据 hashkey 写入相应范围的主题分区
        public let hashKey: String?

        /// 压缩方法
        public let compressType: String?

        public init(topicId: String, hashKey: String? = nil, compressType: String? = nil) {
            self.topicId = topicId
            self.hashKey = hashKey
            self.compressType = compressType
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case hashKey = "HashKey"
            case compressType = "CompressType"
        }
    }

    /// UploadLog返回参数结构体
    public struct UploadLogResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上传日志
    ///
    /// ## 提示
    /// 为了保障您日志数据的可靠性以及更高效地使用日志服务，建议您使用CLS优化后的接口[上传结构化日志](https://cloud.tencent.com/document/product/614/16873)上传日志。
    ///
    /// 同时我们给此接口专门优化定制了多个语言版本的SDK供您选择，SDK提供统一的异步发送、资源控制、自动重试、优雅关闭、感知上报等功能，使上报日志功能更完善，详情请参考[SDK采集](https://cloud.tencent.com/document/product/614/67157)。
    ///
    /// 同时云API上传日志接口也支持同步上传日志数据，如果您选继续使用此接口请参考下文。
    ///
    /// ## 功能描述
    ///
    /// 本接口用于将日志写入到指定的日志主题。
    ///
    /// 日志服务提供以下两种模式：
    ///
    /// #### 负载均衡模式
    ///
    /// 系统根据当前日志主题下所有可读写的分区，遵循负载均衡原则自动分配写入的目标分区。该模式适合消费不保序的场景。
    ///
    /// #### 哈希路由模式
    ///
    /// 系统根据携带的哈希值（X-CLS-HashKey）将数据写入到符合范围要求的目标分区。例如，可以将某个日志源端通过 hashkey 与某个主题分区强绑定，这样可以保证数据在该分区上写入和消费是严格保序的。
    ///
    ///
    ///
    /// #### 输入参数(pb二进制流，位于body中)
    ///
    /// | 字段名       | 类型    | 位置 | 必须 | 含义                                                         |
    /// | ------------ | ------- | ---- | ---- | ------------------------------------------------------------ |
    /// | logGroupList | message | pb   | 是   | logGroup 列表，封装好的日志组列表内容，建议 logGroup 数量不要超过5个 |
    ///
    /// LogGroup 说明：
    ///
    /// | 字段名      | 是否必选 | 含义                                                         |
    /// | ----------- | -------- | ------------------------------------------------------------ |
    /// | logs        | 是       | 日志数组，表示有多个 Log 组成的集合，一个 Log 表示一条日志，一个 LogGroup 中 Log 个数不能超过10000 |
    /// | contextFlow | 否       | LogGroup 的唯一ID，需要使用上下文功能时传入。格式："{上下文ID}-{LogGroupID}"。<br>上下文ID：唯一标识一个上下文（连续滚动的一系列日志文件，或者是需要保序的一系列日志），16进制64位整型字符串。<br>LogGroupID：连续递增的一串整型，16进制64位整型字符串。样例："102700A66102516A-59F59"。                        |
    /// | filename    | 否       | 日志文件名                                                   |
    /// | source      | 否       | 日志来源，一般使用机器 IP 作为标识                           |
    /// | logTags     | 否       | 日志的标签列表                                               |
    ///
    /// Log 说明：
    ///
    /// | 字段名   | 是否必选 | 含义                                                         |
    /// | -------- | -------- | ------------------------------------------------------------ |
    /// | time     | 是       | 日志时间（Unix 格式时间戳），支持秒、毫秒，建议采用毫秒      |
    /// | contents | 否       | key-value 格式的日志内容，表示一条日志里的多个 key-value 组合 |
    ///
    /// Content 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                                                         |
    /// | ------ | -------- | ------------------------------------------------------------ |
    /// | key    | 是       | 单条日志里某个字段组的 key 值，不能以`_`开头                 |
    /// | value  | 是       | 单条日志某个字段组的 value 值，单条日志 value 不能超过1MB，LogGroup 中所有 value 总和不能超过5MB |
    ///
    /// LogTag 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                             |
    /// | ------ | -------- | -------------------------------- |
    /// | key    | 是       | 自定义的标签 key                 |
    /// | value  | 是       | 自定义的标签 key 对应的 value 值 |
    ///
    /// ## PB 编译示例
    ///
    /// 本示例将说明如何使用官方 protoc 编译工具将 PB 描述文件 编译生成为 C++ 语言可调用的上传日志接口。
    ///
    /// > ?目前 protoc 官方支持 Java、C++、Python 等语言的编译，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf)。
    ///
    /// #### 1. 安装 Protocol Buffer
    ///
    /// 下载 [Protocol Buffer](https://main.qcloudimg.com/raw/d7810aaf8b3073fbbc9d4049c21532aa/protobuf-2.6.1.tar.gz) ，解压并安装。示例版本为 protobuf 2.6.1，环境为 Centos 7.3 系统。 解压`protobuf-2.6.1.tar.gz`压缩包至`/usr/local`目录并进入该目录，执行命令如下：
    ///
    /// ```
    /// tar -zxvf protobuf-2.6.1.tar.gz -C /usr/local/ && cd /usr/local/protobuf-2.6.1
    /// ```
    ///
    /// 开始编译和安装，配置环境变量，执行命令如下：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# ./configure
    /// [root@VM_0_8_centos protobuf-2.6.1]# make && make install
    /// [root@VM_0_8_centos protobuf-2.6.1]# export PATH=$PATH:/usr/local/protobuf-2.6.1/bin
    /// ```
    ///
    /// 编译成功后，您可以使用以下命令查看版本：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --version
    /// liprotoc 2.6.1
    /// ```
    ///
    /// #### 2. 创建 PB 描述文件
    ///
    /// PB 描述文件是通信双方约定的数据交换格式，上传日志时须将规定的协议格式编译成对应语言版本的调用接口，然后添加到工程代码里，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf) 。
    ///
    /// 以日志服务所规定的 PB 数据格式内容为准， 在本地创建 PB 消息描述文件 cls.proto。
    ///
    /// > !PB 描述文件内容不可更改，且文件名须以`.proto`结尾。
    ///
    /// cls.proto 内容（PB 描述文件）如下：
    ///
    /// ```
    /// package cls;
    ///
    /// message Log
    /// {
    ///     message Content
    ///     {
    ///         required string key   = 1; // 每组字段的 key
    ///         required string value = 2; // 每组字段的 value
    ///     }
    ///     required int64   time     = 1; // 时间戳，UNIX时间格式
    ///     repeated Content contents = 2; // 一条日志里的多个kv组合
    /// }
    ///
    /// message LogTag
    /// {
    ///     required string key       = 1;
    ///     required string value     = 2;
    /// }
    ///
    /// message LogGroup
    /// {
    ///     repeated Log    logs        = 1; // 多条日志合成的日志数组
    ///     optional string contextFlow = 2; // 目前暂无效用
    ///     optional string filename    = 3; // 日志文件名
    ///     optional string source      = 4; // 日志来源，一般使用机器IP
    ///     repeated LogTag logTags     = 5;
    /// }
    ///
    /// message LogGroupList
    /// {
    ///     repeated LogGroup logGroupList = 1; // 日志组列表
    /// }
    /// ```
    ///
    /// #### 3. 编译生成
    ///
    /// 此例中，使用 proto 编译器生成 C++ 语言的文件，在 cls.proto 文件的同一目录下，执行如下编译命令：
    ///
    /// ```
    /// protoc --cpp_out=./ ./cls.proto
    /// ```
    ///
    /// > ?`--cpp_out=./`表示编译成 cpp 格式并输出当前目录下，`./cls.proto`表示位于当前目录下的 cls.proto 描述文件。
    ///
    /// 编译成功后，会输出对应语言的代码文件。此例会生成 cls.pb.h 头文件和 [cls.pb.cc](http://cls.pb.cc) 代码实现文件，如下所示：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --cpp_out=./ ./cls.proto
    /// [root@VM_0_8_centos protobuf-2.6.1]# ls
    /// cls.pb.cc cls.pb.h cls.proto
    /// ```
    ///
    /// #### 4. 调用
    ///
    /// 将生成的 cls.pb.h 头文件引入代码中，调用接口进行数据格式封装。
    @inlinable @discardableResult
    public func uploadLog(_ input: UploadLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadLogResponse> {
        self.client.execute(action: "UploadLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传日志
    ///
    /// ## 提示
    /// 为了保障您日志数据的可靠性以及更高效地使用日志服务，建议您使用CLS优化后的接口[上传结构化日志](https://cloud.tencent.com/document/product/614/16873)上传日志。
    ///
    /// 同时我们给此接口专门优化定制了多个语言版本的SDK供您选择，SDK提供统一的异步发送、资源控制、自动重试、优雅关闭、感知上报等功能，使上报日志功能更完善，详情请参考[SDK采集](https://cloud.tencent.com/document/product/614/67157)。
    ///
    /// 同时云API上传日志接口也支持同步上传日志数据，如果您选继续使用此接口请参考下文。
    ///
    /// ## 功能描述
    ///
    /// 本接口用于将日志写入到指定的日志主题。
    ///
    /// 日志服务提供以下两种模式：
    ///
    /// #### 负载均衡模式
    ///
    /// 系统根据当前日志主题下所有可读写的分区，遵循负载均衡原则自动分配写入的目标分区。该模式适合消费不保序的场景。
    ///
    /// #### 哈希路由模式
    ///
    /// 系统根据携带的哈希值（X-CLS-HashKey）将数据写入到符合范围要求的目标分区。例如，可以将某个日志源端通过 hashkey 与某个主题分区强绑定，这样可以保证数据在该分区上写入和消费是严格保序的。
    ///
    ///
    ///
    /// #### 输入参数(pb二进制流，位于body中)
    ///
    /// | 字段名       | 类型    | 位置 | 必须 | 含义                                                         |
    /// | ------------ | ------- | ---- | ---- | ------------------------------------------------------------ |
    /// | logGroupList | message | pb   | 是   | logGroup 列表，封装好的日志组列表内容，建议 logGroup 数量不要超过5个 |
    ///
    /// LogGroup 说明：
    ///
    /// | 字段名      | 是否必选 | 含义                                                         |
    /// | ----------- | -------- | ------------------------------------------------------------ |
    /// | logs        | 是       | 日志数组，表示有多个 Log 组成的集合，一个 Log 表示一条日志，一个 LogGroup 中 Log 个数不能超过10000 |
    /// | contextFlow | 否       | LogGroup 的唯一ID，需要使用上下文功能时传入。格式："{上下文ID}-{LogGroupID}"。<br>上下文ID：唯一标识一个上下文（连续滚动的一系列日志文件，或者是需要保序的一系列日志），16进制64位整型字符串。<br>LogGroupID：连续递增的一串整型，16进制64位整型字符串。样例："102700A66102516A-59F59"。                        |
    /// | filename    | 否       | 日志文件名                                                   |
    /// | source      | 否       | 日志来源，一般使用机器 IP 作为标识                           |
    /// | logTags     | 否       | 日志的标签列表                                               |
    ///
    /// Log 说明：
    ///
    /// | 字段名   | 是否必选 | 含义                                                         |
    /// | -------- | -------- | ------------------------------------------------------------ |
    /// | time     | 是       | 日志时间（Unix 格式时间戳），支持秒、毫秒，建议采用毫秒      |
    /// | contents | 否       | key-value 格式的日志内容，表示一条日志里的多个 key-value 组合 |
    ///
    /// Content 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                                                         |
    /// | ------ | -------- | ------------------------------------------------------------ |
    /// | key    | 是       | 单条日志里某个字段组的 key 值，不能以`_`开头                 |
    /// | value  | 是       | 单条日志某个字段组的 value 值，单条日志 value 不能超过1MB，LogGroup 中所有 value 总和不能超过5MB |
    ///
    /// LogTag 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                             |
    /// | ------ | -------- | -------------------------------- |
    /// | key    | 是       | 自定义的标签 key                 |
    /// | value  | 是       | 自定义的标签 key 对应的 value 值 |
    ///
    /// ## PB 编译示例
    ///
    /// 本示例将说明如何使用官方 protoc 编译工具将 PB 描述文件 编译生成为 C++ 语言可调用的上传日志接口。
    ///
    /// > ?目前 protoc 官方支持 Java、C++、Python 等语言的编译，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf)。
    ///
    /// #### 1. 安装 Protocol Buffer
    ///
    /// 下载 [Protocol Buffer](https://main.qcloudimg.com/raw/d7810aaf8b3073fbbc9d4049c21532aa/protobuf-2.6.1.tar.gz) ，解压并安装。示例版本为 protobuf 2.6.1，环境为 Centos 7.3 系统。 解压`protobuf-2.6.1.tar.gz`压缩包至`/usr/local`目录并进入该目录，执行命令如下：
    ///
    /// ```
    /// tar -zxvf protobuf-2.6.1.tar.gz -C /usr/local/ && cd /usr/local/protobuf-2.6.1
    /// ```
    ///
    /// 开始编译和安装，配置环境变量，执行命令如下：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# ./configure
    /// [root@VM_0_8_centos protobuf-2.6.1]# make && make install
    /// [root@VM_0_8_centos protobuf-2.6.1]# export PATH=$PATH:/usr/local/protobuf-2.6.1/bin
    /// ```
    ///
    /// 编译成功后，您可以使用以下命令查看版本：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --version
    /// liprotoc 2.6.1
    /// ```
    ///
    /// #### 2. 创建 PB 描述文件
    ///
    /// PB 描述文件是通信双方约定的数据交换格式，上传日志时须将规定的协议格式编译成对应语言版本的调用接口，然后添加到工程代码里，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf) 。
    ///
    /// 以日志服务所规定的 PB 数据格式内容为准， 在本地创建 PB 消息描述文件 cls.proto。
    ///
    /// > !PB 描述文件内容不可更改，且文件名须以`.proto`结尾。
    ///
    /// cls.proto 内容（PB 描述文件）如下：
    ///
    /// ```
    /// package cls;
    ///
    /// message Log
    /// {
    ///     message Content
    ///     {
    ///         required string key   = 1; // 每组字段的 key
    ///         required string value = 2; // 每组字段的 value
    ///     }
    ///     required int64   time     = 1; // 时间戳，UNIX时间格式
    ///     repeated Content contents = 2; // 一条日志里的多个kv组合
    /// }
    ///
    /// message LogTag
    /// {
    ///     required string key       = 1;
    ///     required string value     = 2;
    /// }
    ///
    /// message LogGroup
    /// {
    ///     repeated Log    logs        = 1; // 多条日志合成的日志数组
    ///     optional string contextFlow = 2; // 目前暂无效用
    ///     optional string filename    = 3; // 日志文件名
    ///     optional string source      = 4; // 日志来源，一般使用机器IP
    ///     repeated LogTag logTags     = 5;
    /// }
    ///
    /// message LogGroupList
    /// {
    ///     repeated LogGroup logGroupList = 1; // 日志组列表
    /// }
    /// ```
    ///
    /// #### 3. 编译生成
    ///
    /// 此例中，使用 proto 编译器生成 C++ 语言的文件，在 cls.proto 文件的同一目录下，执行如下编译命令：
    ///
    /// ```
    /// protoc --cpp_out=./ ./cls.proto
    /// ```
    ///
    /// > ?`--cpp_out=./`表示编译成 cpp 格式并输出当前目录下，`./cls.proto`表示位于当前目录下的 cls.proto 描述文件。
    ///
    /// 编译成功后，会输出对应语言的代码文件。此例会生成 cls.pb.h 头文件和 [cls.pb.cc](http://cls.pb.cc) 代码实现文件，如下所示：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --cpp_out=./ ./cls.proto
    /// [root@VM_0_8_centos protobuf-2.6.1]# ls
    /// cls.pb.cc cls.pb.h cls.proto
    /// ```
    ///
    /// #### 4. 调用
    ///
    /// 将生成的 cls.pb.h 头文件引入代码中，调用接口进行数据格式封装。
    @inlinable @discardableResult
    public func uploadLog(_ input: UploadLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadLogResponse {
        try await self.client.execute(action: "UploadLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传日志
    ///
    /// ## 提示
    /// 为了保障您日志数据的可靠性以及更高效地使用日志服务，建议您使用CLS优化后的接口[上传结构化日志](https://cloud.tencent.com/document/product/614/16873)上传日志。
    ///
    /// 同时我们给此接口专门优化定制了多个语言版本的SDK供您选择，SDK提供统一的异步发送、资源控制、自动重试、优雅关闭、感知上报等功能，使上报日志功能更完善，详情请参考[SDK采集](https://cloud.tencent.com/document/product/614/67157)。
    ///
    /// 同时云API上传日志接口也支持同步上传日志数据，如果您选继续使用此接口请参考下文。
    ///
    /// ## 功能描述
    ///
    /// 本接口用于将日志写入到指定的日志主题。
    ///
    /// 日志服务提供以下两种模式：
    ///
    /// #### 负载均衡模式
    ///
    /// 系统根据当前日志主题下所有可读写的分区，遵循负载均衡原则自动分配写入的目标分区。该模式适合消费不保序的场景。
    ///
    /// #### 哈希路由模式
    ///
    /// 系统根据携带的哈希值（X-CLS-HashKey）将数据写入到符合范围要求的目标分区。例如，可以将某个日志源端通过 hashkey 与某个主题分区强绑定，这样可以保证数据在该分区上写入和消费是严格保序的。
    ///
    ///
    ///
    /// #### 输入参数(pb二进制流，位于body中)
    ///
    /// | 字段名       | 类型    | 位置 | 必须 | 含义                                                         |
    /// | ------------ | ------- | ---- | ---- | ------------------------------------------------------------ |
    /// | logGroupList | message | pb   | 是   | logGroup 列表，封装好的日志组列表内容，建议 logGroup 数量不要超过5个 |
    ///
    /// LogGroup 说明：
    ///
    /// | 字段名      | 是否必选 | 含义                                                         |
    /// | ----------- | -------- | ------------------------------------------------------------ |
    /// | logs        | 是       | 日志数组，表示有多个 Log 组成的集合，一个 Log 表示一条日志，一个 LogGroup 中 Log 个数不能超过10000 |
    /// | contextFlow | 否       | LogGroup 的唯一ID，需要使用上下文功能时传入。格式："{上下文ID}-{LogGroupID}"。<br>上下文ID：唯一标识一个上下文（连续滚动的一系列日志文件，或者是需要保序的一系列日志），16进制64位整型字符串。<br>LogGroupID：连续递增的一串整型，16进制64位整型字符串。样例："102700A66102516A-59F59"。                        |
    /// | filename    | 否       | 日志文件名                                                   |
    /// | source      | 否       | 日志来源，一般使用机器 IP 作为标识                           |
    /// | logTags     | 否       | 日志的标签列表                                               |
    ///
    /// Log 说明：
    ///
    /// | 字段名   | 是否必选 | 含义                                                         |
    /// | -------- | -------- | ------------------------------------------------------------ |
    /// | time     | 是       | 日志时间（Unix 格式时间戳），支持秒、毫秒，建议采用毫秒      |
    /// | contents | 否       | key-value 格式的日志内容，表示一条日志里的多个 key-value 组合 |
    ///
    /// Content 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                                                         |
    /// | ------ | -------- | ------------------------------------------------------------ |
    /// | key    | 是       | 单条日志里某个字段组的 key 值，不能以`_`开头                 |
    /// | value  | 是       | 单条日志某个字段组的 value 值，单条日志 value 不能超过1MB，LogGroup 中所有 value 总和不能超过5MB |
    ///
    /// LogTag 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                             |
    /// | ------ | -------- | -------------------------------- |
    /// | key    | 是       | 自定义的标签 key                 |
    /// | value  | 是       | 自定义的标签 key 对应的 value 值 |
    ///
    /// ## PB 编译示例
    ///
    /// 本示例将说明如何使用官方 protoc 编译工具将 PB 描述文件 编译生成为 C++ 语言可调用的上传日志接口。
    ///
    /// > ?目前 protoc 官方支持 Java、C++、Python 等语言的编译，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf)。
    ///
    /// #### 1. 安装 Protocol Buffer
    ///
    /// 下载 [Protocol Buffer](https://main.qcloudimg.com/raw/d7810aaf8b3073fbbc9d4049c21532aa/protobuf-2.6.1.tar.gz) ，解压并安装。示例版本为 protobuf 2.6.1，环境为 Centos 7.3 系统。 解压`protobuf-2.6.1.tar.gz`压缩包至`/usr/local`目录并进入该目录，执行命令如下：
    ///
    /// ```
    /// tar -zxvf protobuf-2.6.1.tar.gz -C /usr/local/ && cd /usr/local/protobuf-2.6.1
    /// ```
    ///
    /// 开始编译和安装，配置环境变量，执行命令如下：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# ./configure
    /// [root@VM_0_8_centos protobuf-2.6.1]# make && make install
    /// [root@VM_0_8_centos protobuf-2.6.1]# export PATH=$PATH:/usr/local/protobuf-2.6.1/bin
    /// ```
    ///
    /// 编译成功后，您可以使用以下命令查看版本：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --version
    /// liprotoc 2.6.1
    /// ```
    ///
    /// #### 2. 创建 PB 描述文件
    ///
    /// PB 描述文件是通信双方约定的数据交换格式，上传日志时须将规定的协议格式编译成对应语言版本的调用接口，然后添加到工程代码里，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf) 。
    ///
    /// 以日志服务所规定的 PB 数据格式内容为准， 在本地创建 PB 消息描述文件 cls.proto。
    ///
    /// > !PB 描述文件内容不可更改，且文件名须以`.proto`结尾。
    ///
    /// cls.proto 内容（PB 描述文件）如下：
    ///
    /// ```
    /// package cls;
    ///
    /// message Log
    /// {
    ///     message Content
    ///     {
    ///         required string key   = 1; // 每组字段的 key
    ///         required string value = 2; // 每组字段的 value
    ///     }
    ///     required int64   time     = 1; // 时间戳，UNIX时间格式
    ///     repeated Content contents = 2; // 一条日志里的多个kv组合
    /// }
    ///
    /// message LogTag
    /// {
    ///     required string key       = 1;
    ///     required string value     = 2;
    /// }
    ///
    /// message LogGroup
    /// {
    ///     repeated Log    logs        = 1; // 多条日志合成的日志数组
    ///     optional string contextFlow = 2; // 目前暂无效用
    ///     optional string filename    = 3; // 日志文件名
    ///     optional string source      = 4; // 日志来源，一般使用机器IP
    ///     repeated LogTag logTags     = 5;
    /// }
    ///
    /// message LogGroupList
    /// {
    ///     repeated LogGroup logGroupList = 1; // 日志组列表
    /// }
    /// ```
    ///
    /// #### 3. 编译生成
    ///
    /// 此例中，使用 proto 编译器生成 C++ 语言的文件，在 cls.proto 文件的同一目录下，执行如下编译命令：
    ///
    /// ```
    /// protoc --cpp_out=./ ./cls.proto
    /// ```
    ///
    /// > ?`--cpp_out=./`表示编译成 cpp 格式并输出当前目录下，`./cls.proto`表示位于当前目录下的 cls.proto 描述文件。
    ///
    /// 编译成功后，会输出对应语言的代码文件。此例会生成 cls.pb.h 头文件和 [cls.pb.cc](http://cls.pb.cc) 代码实现文件，如下所示：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --cpp_out=./ ./cls.proto
    /// [root@VM_0_8_centos protobuf-2.6.1]# ls
    /// cls.pb.cc cls.pb.h cls.proto
    /// ```
    ///
    /// #### 4. 调用
    ///
    /// 将生成的 cls.pb.h 头文件引入代码中，调用接口进行数据格式封装。
    @inlinable @discardableResult
    public func uploadLog(topicId: String, hashKey: String? = nil, compressType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadLogResponse> {
        self.uploadLog(.init(topicId: topicId, hashKey: hashKey, compressType: compressType), region: region, logger: logger, on: eventLoop)
    }

    /// 上传日志
    ///
    /// ## 提示
    /// 为了保障您日志数据的可靠性以及更高效地使用日志服务，建议您使用CLS优化后的接口[上传结构化日志](https://cloud.tencent.com/document/product/614/16873)上传日志。
    ///
    /// 同时我们给此接口专门优化定制了多个语言版本的SDK供您选择，SDK提供统一的异步发送、资源控制、自动重试、优雅关闭、感知上报等功能，使上报日志功能更完善，详情请参考[SDK采集](https://cloud.tencent.com/document/product/614/67157)。
    ///
    /// 同时云API上传日志接口也支持同步上传日志数据，如果您选继续使用此接口请参考下文。
    ///
    /// ## 功能描述
    ///
    /// 本接口用于将日志写入到指定的日志主题。
    ///
    /// 日志服务提供以下两种模式：
    ///
    /// #### 负载均衡模式
    ///
    /// 系统根据当前日志主题下所有可读写的分区，遵循负载均衡原则自动分配写入的目标分区。该模式适合消费不保序的场景。
    ///
    /// #### 哈希路由模式
    ///
    /// 系统根据携带的哈希值（X-CLS-HashKey）将数据写入到符合范围要求的目标分区。例如，可以将某个日志源端通过 hashkey 与某个主题分区强绑定，这样可以保证数据在该分区上写入和消费是严格保序的。
    ///
    ///
    ///
    /// #### 输入参数(pb二进制流，位于body中)
    ///
    /// | 字段名       | 类型    | 位置 | 必须 | 含义                                                         |
    /// | ------------ | ------- | ---- | ---- | ------------------------------------------------------------ |
    /// | logGroupList | message | pb   | 是   | logGroup 列表，封装好的日志组列表内容，建议 logGroup 数量不要超过5个 |
    ///
    /// LogGroup 说明：
    ///
    /// | 字段名      | 是否必选 | 含义                                                         |
    /// | ----------- | -------- | ------------------------------------------------------------ |
    /// | logs        | 是       | 日志数组，表示有多个 Log 组成的集合，一个 Log 表示一条日志，一个 LogGroup 中 Log 个数不能超过10000 |
    /// | contextFlow | 否       | LogGroup 的唯一ID，需要使用上下文功能时传入。格式："{上下文ID}-{LogGroupID}"。<br>上下文ID：唯一标识一个上下文（连续滚动的一系列日志文件，或者是需要保序的一系列日志），16进制64位整型字符串。<br>LogGroupID：连续递增的一串整型，16进制64位整型字符串。样例："102700A66102516A-59F59"。                        |
    /// | filename    | 否       | 日志文件名                                                   |
    /// | source      | 否       | 日志来源，一般使用机器 IP 作为标识                           |
    /// | logTags     | 否       | 日志的标签列表                                               |
    ///
    /// Log 说明：
    ///
    /// | 字段名   | 是否必选 | 含义                                                         |
    /// | -------- | -------- | ------------------------------------------------------------ |
    /// | time     | 是       | 日志时间（Unix 格式时间戳），支持秒、毫秒，建议采用毫秒      |
    /// | contents | 否       | key-value 格式的日志内容，表示一条日志里的多个 key-value 组合 |
    ///
    /// Content 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                                                         |
    /// | ------ | -------- | ------------------------------------------------------------ |
    /// | key    | 是       | 单条日志里某个字段组的 key 值，不能以`_`开头                 |
    /// | value  | 是       | 单条日志某个字段组的 value 值，单条日志 value 不能超过1MB，LogGroup 中所有 value 总和不能超过5MB |
    ///
    /// LogTag 说明：
    ///
    /// | 字段名 | 是否必选 | 含义                             |
    /// | ------ | -------- | -------------------------------- |
    /// | key    | 是       | 自定义的标签 key                 |
    /// | value  | 是       | 自定义的标签 key 对应的 value 值 |
    ///
    /// ## PB 编译示例
    ///
    /// 本示例将说明如何使用官方 protoc 编译工具将 PB 描述文件 编译生成为 C++ 语言可调用的上传日志接口。
    ///
    /// > ?目前 protoc 官方支持 Java、C++、Python 等语言的编译，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf)。
    ///
    /// #### 1. 安装 Protocol Buffer
    ///
    /// 下载 [Protocol Buffer](https://main.qcloudimg.com/raw/d7810aaf8b3073fbbc9d4049c21532aa/protobuf-2.6.1.tar.gz) ，解压并安装。示例版本为 protobuf 2.6.1，环境为 Centos 7.3 系统。 解压`protobuf-2.6.1.tar.gz`压缩包至`/usr/local`目录并进入该目录，执行命令如下：
    ///
    /// ```
    /// tar -zxvf protobuf-2.6.1.tar.gz -C /usr/local/ && cd /usr/local/protobuf-2.6.1
    /// ```
    ///
    /// 开始编译和安装，配置环境变量，执行命令如下：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# ./configure
    /// [root@VM_0_8_centos protobuf-2.6.1]# make && make install
    /// [root@VM_0_8_centos protobuf-2.6.1]# export PATH=$PATH:/usr/local/protobuf-2.6.1/bin
    /// ```
    ///
    /// 编译成功后，您可以使用以下命令查看版本：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --version
    /// liprotoc 2.6.1
    /// ```
    ///
    /// #### 2. 创建 PB 描述文件
    ///
    /// PB 描述文件是通信双方约定的数据交换格式，上传日志时须将规定的协议格式编译成对应语言版本的调用接口，然后添加到工程代码里，详情请参见 [protoc](https://github.com/protocolbuffers/protobuf) 。
    ///
    /// 以日志服务所规定的 PB 数据格式内容为准， 在本地创建 PB 消息描述文件 cls.proto。
    ///
    /// > !PB 描述文件内容不可更改，且文件名须以`.proto`结尾。
    ///
    /// cls.proto 内容（PB 描述文件）如下：
    ///
    /// ```
    /// package cls;
    ///
    /// message Log
    /// {
    ///     message Content
    ///     {
    ///         required string key   = 1; // 每组字段的 key
    ///         required string value = 2; // 每组字段的 value
    ///     }
    ///     required int64   time     = 1; // 时间戳，UNIX时间格式
    ///     repeated Content contents = 2; // 一条日志里的多个kv组合
    /// }
    ///
    /// message LogTag
    /// {
    ///     required string key       = 1;
    ///     required string value     = 2;
    /// }
    ///
    /// message LogGroup
    /// {
    ///     repeated Log    logs        = 1; // 多条日志合成的日志数组
    ///     optional string contextFlow = 2; // 目前暂无效用
    ///     optional string filename    = 3; // 日志文件名
    ///     optional string source      = 4; // 日志来源，一般使用机器IP
    ///     repeated LogTag logTags     = 5;
    /// }
    ///
    /// message LogGroupList
    /// {
    ///     repeated LogGroup logGroupList = 1; // 日志组列表
    /// }
    /// ```
    ///
    /// #### 3. 编译生成
    ///
    /// 此例中，使用 proto 编译器生成 C++ 语言的文件，在 cls.proto 文件的同一目录下，执行如下编译命令：
    ///
    /// ```
    /// protoc --cpp_out=./ ./cls.proto
    /// ```
    ///
    /// > ?`--cpp_out=./`表示编译成 cpp 格式并输出当前目录下，`./cls.proto`表示位于当前目录下的 cls.proto 描述文件。
    ///
    /// 编译成功后，会输出对应语言的代码文件。此例会生成 cls.pb.h 头文件和 [cls.pb.cc](http://cls.pb.cc) 代码实现文件，如下所示：
    ///
    /// ```
    /// [root@VM_0_8_centos protobuf-2.6.1]# protoc --cpp_out=./ ./cls.proto
    /// [root@VM_0_8_centos protobuf-2.6.1]# ls
    /// cls.pb.cc cls.pb.h cls.proto
    /// ```
    ///
    /// #### 4. 调用
    ///
    /// 将生成的 cls.pb.h 头文件引入代码中，调用接口进行数据格式封装。
    @inlinable @discardableResult
    public func uploadLog(topicId: String, hashKey: String? = nil, compressType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadLogResponse {
        try await self.uploadLog(.init(topicId: topicId, hashKey: hashKey, compressType: compressType), region: region, logger: logger, on: eventLoop)
    }
}
