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

extension Scf {
    /// UpdateFunctionEventInvokeConfig请求参数结构体
    public struct UpdateFunctionEventInvokeConfigRequest: TCRequestModel {
        /// 异步重试配置信息
        public let asyncTriggerConfig: AsyncTriggerConfig

        /// 函数名称
        public let functionName: String

        /// 函数所属命名空间，默认为default
        public let namespace: String?

        public init(asyncTriggerConfig: AsyncTriggerConfig, functionName: String, namespace: String? = nil) {
            self.asyncTriggerConfig = asyncTriggerConfig
            self.functionName = functionName
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case asyncTriggerConfig = "AsyncTriggerConfig"
            case functionName = "FunctionName"
            case namespace = "Namespace"
        }
    }

    /// UpdateFunctionEventInvokeConfig返回参数结构体
    public struct UpdateFunctionEventInvokeConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable @discardableResult
    public func updateFunctionEventInvokeConfig(_ input: UpdateFunctionEventInvokeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionEventInvokeConfigResponse> {
        self.client.execute(action: "UpdateFunctionEventInvokeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable @discardableResult
    public func updateFunctionEventInvokeConfig(_ input: UpdateFunctionEventInvokeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionEventInvokeConfigResponse {
        try await self.client.execute(action: "UpdateFunctionEventInvokeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable @discardableResult
    public func updateFunctionEventInvokeConfig(asyncTriggerConfig: AsyncTriggerConfig, functionName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionEventInvokeConfigResponse> {
        self.updateFunctionEventInvokeConfig(UpdateFunctionEventInvokeConfigRequest(asyncTriggerConfig: asyncTriggerConfig, functionName: functionName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 更新函数异步重试配置
    ///
    /// 更新函数的异步重试配置，包括重试次数和消息保留时间
    @inlinable @discardableResult
    public func updateFunctionEventInvokeConfig(asyncTriggerConfig: AsyncTriggerConfig, functionName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionEventInvokeConfigResponse {
        try await self.updateFunctionEventInvokeConfig(UpdateFunctionEventInvokeConfigRequest(asyncTriggerConfig: asyncTriggerConfig, functionName: functionName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
