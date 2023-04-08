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

import Logging
import NIOCore
import TecoCore

extension Scf {
    /// CreateFunction请求参数结构体
    public struct CreateFunctionRequest: TCRequestModel {
        /// 创建的函数名称，函数名称支持26个英文字母大小写、数字、连接符和下划线，第一个字符只能以字母开头，最后一个字符不能为连接符或者下划线，名称长度2-60
        public let functionName: String

        /// 函数代码. 注意：不能同时指定Cos、ZipFile或 DemoId。
        public let code: Code

        /// 函数处理方法名称，名称格式支持 "文件名称.方法名称" 形式（java 名称格式 包名.类名::方法名），文件名称和函数名称之间以"."隔开，文件名称和函数名称要求以字母开始和结尾，中间允许插入字母、数字、下划线和连接符，文件名称和函数名字的长度要求是 2-60 个字符
        public let handler: String?

        /// 函数描述,最大支持 1000 个英文字母、数字、空格、逗号、换行符和英文句号，支持中文
        public let description: String?

        /// 函数运行时内存大小，默认为 128M，可选范围 64、128MB-3072MB，并且以 128MB 为阶梯
        public let memorySize: Int64?

        /// 函数最长执行时间，单位为秒，可选值范围 1-900 秒，默认为 3 秒
        public let timeout: Int64?

        /// 函数的环境变量
        public let environment: Environment?

        /// 函数运行环境，目前仅支持 Python2.7，Python3.6，Nodejs6.10，Nodejs8.9，Nodejs10.15，Nodejs12.16， Php5， Php7，Go1，Java8 和 CustomRuntime，默认Python2.7
        public let runtime: String?

        /// 函数的私有网络配置
        public let vpcConfig: VpcConfig?

        /// 函数所属命名空间
        public let namespace: String?

        /// 函数绑定的角色
        public let role: String?

        /// [在线依赖安装](https://cloud.tencent.com/document/product/583/37920)，TRUE 表示安装，默认值为 FALSE。仅支持 Node.js 函数。
        public let installDependency: String?

        /// 函数日志投递到的CLS LogsetID
        public let clsLogsetId: String?

        /// 函数日志投递到的CLS TopicID
        public let clsTopicId: String?

        /// 函数类型，默认值为Event，创建触发器函数请填写Event，创建HTTP函数级服务请填写HTTP
        public let type: String?

        /// CodeSource 代码来源，支持ZipFile, Cos, Demo 其中之一
        public let codeSource: String?

        /// 函数要关联的Layer版本列表，Layer会按照在列表中顺序依次覆盖。
        public let layers: [LayerVersionSimple]?

        /// 死信队列参数
        public let deadLetterConfig: DeadLetterConfig?

        /// 公网访问配置
        public let publicNetConfig: PublicNetConfigIn?

        /// 文件系统配置参数，用于云函数挂载文件系统
        public let cfsConfig: CfsConfig?

        /// 函数初始化超时时间，默认 65s，镜像部署函数默认 90s。
        public let initTimeout: Int64?

        /// 函数 Tag 参数，以键值对数组形式传入
        public let tags: [Tag]?

        /// 是否开启异步属性，TRUE 为开启，FALSE为关闭
        public let asyncRunEnable: String?

        /// 是否开启事件追踪，TRUE 为开启，FALSE为关闭
        public let traceEnable: String?

        /// HTTP函数支持的访问协议。当前支持WebSockets协议，值为WS
        public let protocolType: String?

        /// HTTP函数配置ProtocolType访问协议，当前协议可配置的参数
        public let protocolParams: ProtocolParams?

        /// 单实例多并发配置。只支持Web函数。
        public let instanceConcurrencyConfig: InstanceConcurrencyConfig?

        public init(functionName: String, code: Code, handler: String? = nil, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, environment: Environment? = nil, runtime: String? = nil, vpcConfig: VpcConfig? = nil, namespace: String? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, type: String? = nil, codeSource: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, tags: [Tag]? = nil, asyncRunEnable: String? = nil, traceEnable: String? = nil, protocolType: String? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil) {
            self.functionName = functionName
            self.code = code
            self.handler = handler
            self.description = description
            self.memorySize = memorySize
            self.timeout = timeout
            self.environment = environment
            self.runtime = runtime
            self.vpcConfig = vpcConfig
            self.namespace = namespace
            self.role = role
            self.installDependency = installDependency
            self.clsLogsetId = clsLogsetId
            self.clsTopicId = clsTopicId
            self.type = type
            self.codeSource = codeSource
            self.layers = layers
            self.deadLetterConfig = deadLetterConfig
            self.publicNetConfig = publicNetConfig
            self.cfsConfig = cfsConfig
            self.initTimeout = initTimeout
            self.tags = tags
            self.asyncRunEnable = asyncRunEnable
            self.traceEnable = traceEnable
            self.protocolType = protocolType
            self.protocolParams = protocolParams
            self.instanceConcurrencyConfig = instanceConcurrencyConfig
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case code = "Code"
            case handler = "Handler"
            case description = "Description"
            case memorySize = "MemorySize"
            case timeout = "Timeout"
            case environment = "Environment"
            case runtime = "Runtime"
            case vpcConfig = "VpcConfig"
            case namespace = "Namespace"
            case role = "Role"
            case installDependency = "InstallDependency"
            case clsLogsetId = "ClsLogsetId"
            case clsTopicId = "ClsTopicId"
            case type = "Type"
            case codeSource = "CodeSource"
            case layers = "Layers"
            case deadLetterConfig = "DeadLetterConfig"
            case publicNetConfig = "PublicNetConfig"
            case cfsConfig = "CfsConfig"
            case initTimeout = "InitTimeout"
            case tags = "Tags"
            case asyncRunEnable = "AsyncRunEnable"
            case traceEnable = "TraceEnable"
            case protocolType = "ProtocolType"
            case protocolParams = "ProtocolParams"
            case instanceConcurrencyConfig = "InstanceConcurrencyConfig"
        }
    }

    /// CreateFunction返回参数结构体
    public struct CreateFunctionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建函数
    ///
    /// 该接口根据传入参数创建新的函数。
    @inlinable @discardableResult
    public func createFunction(_ input: CreateFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFunctionResponse> {
        self.client.execute(action: "CreateFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建函数
    ///
    /// 该接口根据传入参数创建新的函数。
    @inlinable @discardableResult
    public func createFunction(_ input: CreateFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFunctionResponse {
        try await self.client.execute(action: "CreateFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建函数
    ///
    /// 该接口根据传入参数创建新的函数。
    @inlinable @discardableResult
    public func createFunction(functionName: String, code: Code, handler: String? = nil, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, environment: Environment? = nil, runtime: String? = nil, vpcConfig: VpcConfig? = nil, namespace: String? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, type: String? = nil, codeSource: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, tags: [Tag]? = nil, asyncRunEnable: String? = nil, traceEnable: String? = nil, protocolType: String? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFunctionResponse> {
        self.createFunction(.init(functionName: functionName, code: code, handler: handler, description: description, memorySize: memorySize, timeout: timeout, environment: environment, runtime: runtime, vpcConfig: vpcConfig, namespace: namespace, role: role, installDependency: installDependency, clsLogsetId: clsLogsetId, clsTopicId: clsTopicId, type: type, codeSource: codeSource, layers: layers, deadLetterConfig: deadLetterConfig, publicNetConfig: publicNetConfig, cfsConfig: cfsConfig, initTimeout: initTimeout, tags: tags, asyncRunEnable: asyncRunEnable, traceEnable: traceEnable, protocolType: protocolType, protocolParams: protocolParams, instanceConcurrencyConfig: instanceConcurrencyConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建函数
    ///
    /// 该接口根据传入参数创建新的函数。
    @inlinable @discardableResult
    public func createFunction(functionName: String, code: Code, handler: String? = nil, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, environment: Environment? = nil, runtime: String? = nil, vpcConfig: VpcConfig? = nil, namespace: String? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, type: String? = nil, codeSource: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, tags: [Tag]? = nil, asyncRunEnable: String? = nil, traceEnable: String? = nil, protocolType: String? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFunctionResponse {
        try await self.createFunction(.init(functionName: functionName, code: code, handler: handler, description: description, memorySize: memorySize, timeout: timeout, environment: environment, runtime: runtime, vpcConfig: vpcConfig, namespace: namespace, role: role, installDependency: installDependency, clsLogsetId: clsLogsetId, clsTopicId: clsTopicId, type: type, codeSource: codeSource, layers: layers, deadLetterConfig: deadLetterConfig, publicNetConfig: publicNetConfig, cfsConfig: cfsConfig, initTimeout: initTimeout, tags: tags, asyncRunEnable: asyncRunEnable, traceEnable: traceEnable, protocolType: protocolType, protocolParams: protocolParams, instanceConcurrencyConfig: instanceConcurrencyConfig), region: region, logger: logger, on: eventLoop)
    }
}
