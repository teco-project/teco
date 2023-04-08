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

import TecoCore

extension Tse {
    /// UpdateEngineInternetAccess请求参数结构体
    public struct UpdateEngineInternetAccessRequest: TCRequestModel {
        /// 引擎ID
        public let instanceId: String

        /// 引擎类型
        public let engineType: String

        /// 是否开启客户端公网访问，true开 false关
        public let enableClientInternetAccess: Bool?

        public init(instanceId: String, engineType: String, enableClientInternetAccess: Bool? = nil) {
            self.instanceId = instanceId
            self.engineType = engineType
            self.enableClientInternetAccess = enableClientInternetAccess
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case engineType = "EngineType"
            case enableClientInternetAccess = "EnableClientInternetAccess"
        }
    }

    /// UpdateEngineInternetAccess返回参数结构体
    public struct UpdateEngineInternetAccessResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改引擎公网访问配置
    @inlinable @discardableResult
    public func updateEngineInternetAccess(_ input: UpdateEngineInternetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEngineInternetAccessResponse> {
        self.client.execute(action: "UpdateEngineInternetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改引擎公网访问配置
    @inlinable @discardableResult
    public func updateEngineInternetAccess(_ input: UpdateEngineInternetAccessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEngineInternetAccessResponse {
        try await self.client.execute(action: "UpdateEngineInternetAccess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改引擎公网访问配置
    @inlinable @discardableResult
    public func updateEngineInternetAccess(instanceId: String, engineType: String, enableClientInternetAccess: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEngineInternetAccessResponse> {
        self.updateEngineInternetAccess(.init(instanceId: instanceId, engineType: engineType, enableClientInternetAccess: enableClientInternetAccess), region: region, logger: logger, on: eventLoop)
    }

    /// 修改引擎公网访问配置
    @inlinable @discardableResult
    public func updateEngineInternetAccess(instanceId: String, engineType: String, enableClientInternetAccess: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEngineInternetAccessResponse {
        try await self.updateEngineInternetAccess(.init(instanceId: instanceId, engineType: engineType, enableClientInternetAccess: enableClientInternetAccess), region: region, logger: logger, on: eventLoop)
    }
}
