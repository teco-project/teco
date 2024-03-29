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
    /// UpdateFunctionConfiguration请求参数结构体
    public struct UpdateFunctionConfigurationRequest: TCRequest {
        /// 要修改的函数名称
        public let functionName: String

        /// 函数描述。最大支持 1000 个英文字母、数字、空格、逗号和英文句号，支持中文
        public let description: String?

        /// 函数运行时内存大小，默认为 128 M，可选范64M、128 M-3072 M，以 128MB 为阶梯。
        public let memorySize: Int64?

        /// 函数最长执行时间，单位为秒，可选值范 1-900 秒，默认为 3 秒
        public let timeout: Int64?

        /// 函数运行环境，目前仅支持 Python2.7，Python3.6，Nodejs6.10，Nodejs8.9，Nodejs10.15，Nodejs12.16， PHP5， PHP7，Go1 ， Java8和CustomRuntime
        public let runtime: String?

        /// 函数的环境变量
        public let environment: Environment?

        /// 函数所属命名空间
        /// 默认值: default
        public let namespace: String?

        /// 函数的私有网络配置
        public let vpcConfig: VpcConfig?

        /// 函数绑定的角色
        public let role: String?

        /// [在线依赖安装](https://cloud.tencent.com/document/product/583/37920)，TRUE 表示安装，默认值为 FALSE。仅支持 Node.js 函数。
        public let installDependency: String?

        /// 日志投递到的cls日志集ID
        public let clsLogsetId: String?

        /// 日志投递到的cls Topic ID
        public let clsTopicId: String?

        /// 在更新时是否同步发布新版本，默认为：FALSE，不发布新版本
        public let publish: String?

        /// 是否开启L5访问能力，TRUE 为开启，FALSE为关闭
        public let l5Enable: String?

        /// 函数要关联的层版本列表，层的版本会按照在列表中顺序依次覆盖。
        public let layers: [LayerVersionSimple]?

        /// 函数关联的死信队列信息
        public let deadLetterConfig: DeadLetterConfig?

        /// 公网访问配置
        public let publicNetConfig: PublicNetConfigIn?

        /// 文件系统配置入参，用于云函数绑定CFS文件系统
        public let cfsConfig: CfsConfig?

        /// 函数初始化执行超时时间
        public let initTimeout: Int64?

        /// HTTP函数配置ProtocolType访问协议，当前协议可配置的参数
        public let protocolParams: ProtocolParams?

        /// 单实例多并发配置。只支持Web函数。
        public let instanceConcurrencyConfig: InstanceConcurrencyConfig?

        public init(functionName: String, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, runtime: String? = nil, environment: Environment? = nil, namespace: String? = nil, vpcConfig: VpcConfig? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, publish: String? = nil, l5Enable: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil) {
            self.functionName = functionName
            self.description = description
            self.memorySize = memorySize
            self.timeout = timeout
            self.runtime = runtime
            self.environment = environment
            self.namespace = namespace
            self.vpcConfig = vpcConfig
            self.role = role
            self.installDependency = installDependency
            self.clsLogsetId = clsLogsetId
            self.clsTopicId = clsTopicId
            self.publish = publish
            self.l5Enable = l5Enable
            self.layers = layers
            self.deadLetterConfig = deadLetterConfig
            self.publicNetConfig = publicNetConfig
            self.cfsConfig = cfsConfig
            self.initTimeout = initTimeout
            self.protocolParams = protocolParams
            self.instanceConcurrencyConfig = instanceConcurrencyConfig
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case description = "Description"
            case memorySize = "MemorySize"
            case timeout = "Timeout"
            case runtime = "Runtime"
            case environment = "Environment"
            case namespace = "Namespace"
            case vpcConfig = "VpcConfig"
            case role = "Role"
            case installDependency = "InstallDependency"
            case clsLogsetId = "ClsLogsetId"
            case clsTopicId = "ClsTopicId"
            case publish = "Publish"
            case l5Enable = "L5Enable"
            case layers = "Layers"
            case deadLetterConfig = "DeadLetterConfig"
            case publicNetConfig = "PublicNetConfig"
            case cfsConfig = "CfsConfig"
            case initTimeout = "InitTimeout"
            case protocolParams = "ProtocolParams"
            case instanceConcurrencyConfig = "InstanceConcurrencyConfig"
        }
    }

    /// UpdateFunctionConfiguration返回参数结构体
    public struct UpdateFunctionConfigurationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新函数配置
    ///
    /// 该接口根据传入参数更新函数配置。
    @inlinable @discardableResult
    public func updateFunctionConfiguration(_ input: UpdateFunctionConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionConfigurationResponse> {
        self.client.execute(action: "UpdateFunctionConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新函数配置
    ///
    /// 该接口根据传入参数更新函数配置。
    @inlinable @discardableResult
    public func updateFunctionConfiguration(_ input: UpdateFunctionConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionConfigurationResponse {
        try await self.client.execute(action: "UpdateFunctionConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新函数配置
    ///
    /// 该接口根据传入参数更新函数配置。
    @inlinable @discardableResult
    public func updateFunctionConfiguration(functionName: String, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, runtime: String? = nil, environment: Environment? = nil, namespace: String? = nil, vpcConfig: VpcConfig? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, publish: String? = nil, l5Enable: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionConfigurationResponse> {
        self.updateFunctionConfiguration(.init(functionName: functionName, description: description, memorySize: memorySize, timeout: timeout, runtime: runtime, environment: environment, namespace: namespace, vpcConfig: vpcConfig, role: role, installDependency: installDependency, clsLogsetId: clsLogsetId, clsTopicId: clsTopicId, publish: publish, l5Enable: l5Enable, layers: layers, deadLetterConfig: deadLetterConfig, publicNetConfig: publicNetConfig, cfsConfig: cfsConfig, initTimeout: initTimeout, protocolParams: protocolParams, instanceConcurrencyConfig: instanceConcurrencyConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 更新函数配置
    ///
    /// 该接口根据传入参数更新函数配置。
    @inlinable @discardableResult
    public func updateFunctionConfiguration(functionName: String, description: String? = nil, memorySize: Int64? = nil, timeout: Int64? = nil, runtime: String? = nil, environment: Environment? = nil, namespace: String? = nil, vpcConfig: VpcConfig? = nil, role: String? = nil, installDependency: String? = nil, clsLogsetId: String? = nil, clsTopicId: String? = nil, publish: String? = nil, l5Enable: String? = nil, layers: [LayerVersionSimple]? = nil, deadLetterConfig: DeadLetterConfig? = nil, publicNetConfig: PublicNetConfigIn? = nil, cfsConfig: CfsConfig? = nil, initTimeout: Int64? = nil, protocolParams: ProtocolParams? = nil, instanceConcurrencyConfig: InstanceConcurrencyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionConfigurationResponse {
        try await self.updateFunctionConfiguration(.init(functionName: functionName, description: description, memorySize: memorySize, timeout: timeout, runtime: runtime, environment: environment, namespace: namespace, vpcConfig: vpcConfig, role: role, installDependency: installDependency, clsLogsetId: clsLogsetId, clsTopicId: clsTopicId, publish: publish, l5Enable: l5Enable, layers: layers, deadLetterConfig: deadLetterConfig, publicNetConfig: publicNetConfig, cfsConfig: cfsConfig, initTimeout: initTimeout, protocolParams: protocolParams, instanceConcurrencyConfig: instanceConcurrencyConfig), region: region, logger: logger, on: eventLoop)
    }
}
