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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Scf {
    /// GetFunction请求参数结构体
    public struct GetFunctionRequest: TCRequest {
        /// 需要获取详情的函数名称
        public let functionName: String

        /// 函数的版本号
        /// 默认值: $LATEST
        public let qualifier: String?

        /// 函数所属命名空间
        /// 默认值: default
        public let namespace: String?

        /// 是否显示代码, TRUE表示显示代码，FALSE表示不显示代码,大于1M的入口文件不会显示
        public let showCode: String?

        public init(functionName: String, qualifier: String? = nil, namespace: String? = nil, showCode: String? = nil) {
            self.functionName = functionName
            self.qualifier = qualifier
            self.namespace = namespace
            self.showCode = showCode
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case qualifier = "Qualifier"
            case namespace = "Namespace"
            case showCode = "ShowCode"
        }
    }

    /// GetFunction返回参数结构体
    public struct GetFunctionResponse: TCResponse {
        /// 函数的最后修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$modTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var modTime: Date

        /// 函数的代码
        public let codeInfo: String

        /// 函数的描述信息
        public let description: String

        /// 函数的触发器列表
        public let triggers: [Trigger]

        /// 函数的入口
        public let handler: String

        /// 函数代码大小
        public let codeSize: Int64

        /// 函数的超时时间
        public let timeout: Int64

        /// 函数的版本
        public let functionVersion: String

        /// 函数的最大可用内存
        public let memorySize: Int64

        /// 函数的运行环境
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runtime: String?

        /// 函数的名称
        public let functionName: String

        /// 函数的私有网络
        public let vpcConfig: VpcConfig

        /// 是否使用GPU
        public let useGpu: String

        /// 函数的环境变量
        public let environment: Environment

        /// 代码是否正确
        public let codeResult: String

        /// 代码错误信息
        public let codeError: String

        /// 代码错误码
        public let errNo: Int64

        /// 函数的命名空间
        public let namespace: String

        /// 函数绑定的角色
        public let role: String

        /// 是否自动安装依赖
        public let installDependency: String

        /// 函数状态，状态值及流转[参考说明](https://cloud.tencent.com/document/product/583/47175)
        public let status: String

        /// 状态描述
        public let statusDesc: String

        /// 日志投递到的Cls日志集
        public let clsLogsetId: String

        /// 日志投递到的Cls Topic
        public let clsTopicId: String

        /// 函数ID
        public let functionId: String

        /// 函数的标签列表
        public let tags: [Tag]

        /// EipConfig配置
        public let eipConfig: EipOutConfig

        /// 域名信息
        public let accessInfo: AccessInfo

        /// 函数类型，取值为HTTP或者Event
        public let type: String

        /// 是否启用L5
        public let l5Enable: String

        /// 函数关联的Layer版本信息
        public let layers: [LayerVersionInfo]

        /// 函数关联的死信队列信息
        public let deadLetterConfig: DeadLetterConfig

        /// 函数创建回见
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$addTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var addTime: Date

        /// 公网访问配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicNetConfig: PublicNetConfigOut?

        /// 是否启用Ons
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onsEnable: String?

        /// 文件系统配置参数，用于云函数挂载文件系统
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cfsConfig: CfsConfig?

        /// 函数的计费状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/47175#.E5.87.BD.E6.95.B0.E8.AE.A1.E8.B4.B9.E7.8A.B6.E6.80.81)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let availableStatus: String?

        /// 函数版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qualifier: String?

        /// 函数初始化超时时间
        public let initTimeout: Int64

        /// 函数状态失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusReasons: [StatusReason]?

        /// 是否开启异步属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRunEnable: String?

        /// 是否开启事件追踪
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceEnable: String?

        /// HTTP函数支持的访问协议。当前支持WebSockets协议。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let protocolType: String?

        /// HTTP函数配置ProtocolType访问协议，当前协议配置的参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let protocolParams: ProtocolParams?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modTime = "ModTime"
            case codeInfo = "CodeInfo"
            case description = "Description"
            case triggers = "Triggers"
            case handler = "Handler"
            case codeSize = "CodeSize"
            case timeout = "Timeout"
            case functionVersion = "FunctionVersion"
            case memorySize = "MemorySize"
            case runtime = "Runtime"
            case functionName = "FunctionName"
            case vpcConfig = "VpcConfig"
            case useGpu = "UseGpu"
            case environment = "Environment"
            case codeResult = "CodeResult"
            case codeError = "CodeError"
            case errNo = "ErrNo"
            case namespace = "Namespace"
            case role = "Role"
            case installDependency = "InstallDependency"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case clsLogsetId = "ClsLogsetId"
            case clsTopicId = "ClsTopicId"
            case functionId = "FunctionId"
            case tags = "Tags"
            case eipConfig = "EipConfig"
            case accessInfo = "AccessInfo"
            case type = "Type"
            case l5Enable = "L5Enable"
            case layers = "Layers"
            case deadLetterConfig = "DeadLetterConfig"
            case addTime = "AddTime"
            case publicNetConfig = "PublicNetConfig"
            case onsEnable = "OnsEnable"
            case cfsConfig = "CfsConfig"
            case availableStatus = "AvailableStatus"
            case qualifier = "Qualifier"
            case initTimeout = "InitTimeout"
            case statusReasons = "StatusReasons"
            case asyncRunEnable = "AsyncRunEnable"
            case traceEnable = "TraceEnable"
            case protocolType = "ProtocolType"
            case protocolParams = "ProtocolParams"
            case requestId = "RequestId"
        }
    }

    /// 获取函数详细信息
    ///
    /// 该接口获取某个函数的详细信息，包括名称、代码、处理方法、关联触发器和超时时间等字段。
    @inlinable
    public func getFunction(_ input: GetFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFunctionResponse> {
        self.client.execute(action: "GetFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取函数详细信息
    ///
    /// 该接口获取某个函数的详细信息，包括名称、代码、处理方法、关联触发器和超时时间等字段。
    @inlinable
    public func getFunction(_ input: GetFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFunctionResponse {
        try await self.client.execute(action: "GetFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取函数详细信息
    ///
    /// 该接口获取某个函数的详细信息，包括名称、代码、处理方法、关联触发器和超时时间等字段。
    @inlinable
    public func getFunction(functionName: String, qualifier: String? = nil, namespace: String? = nil, showCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFunctionResponse> {
        self.getFunction(.init(functionName: functionName, qualifier: qualifier, namespace: namespace, showCode: showCode), region: region, logger: logger, on: eventLoop)
    }

    /// 获取函数详细信息
    ///
    /// 该接口获取某个函数的详细信息，包括名称、代码、处理方法、关联触发器和超时时间等字段。
    @inlinable
    public func getFunction(functionName: String, qualifier: String? = nil, namespace: String? = nil, showCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFunctionResponse {
        try await self.getFunction(.init(functionName: functionName, qualifier: qualifier, namespace: namespace, showCode: showCode), region: region, logger: logger, on: eventLoop)
    }
}
