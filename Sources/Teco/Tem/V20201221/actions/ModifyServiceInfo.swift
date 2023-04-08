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

extension Tem {
    /// ModifyServiceInfo请求参数结构体
    public struct ModifyServiceInfoRequest: TCRequestModel {
        /// 服务ID
        public let serviceId: String

        /// 描述
        public let description: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(serviceId: String, description: String, sourceChannel: Int64? = nil) {
            self.serviceId = serviceId
            self.description = description
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case description = "Description"
            case sourceChannel = "SourceChannel"
        }
    }

    /// ModifyServiceInfo返回参数结构体
    public struct ModifyServiceInfoResponse: TCResponseModel {
        /// 成功与否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改服务基本信息
    @inlinable
    public func modifyServiceInfo(_ input: ModifyServiceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceInfoResponse> {
        self.client.execute(action: "ModifyServiceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改服务基本信息
    @inlinable
    public func modifyServiceInfo(_ input: ModifyServiceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceInfoResponse {
        try await self.client.execute(action: "ModifyServiceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改服务基本信息
    @inlinable
    public func modifyServiceInfo(serviceId: String, description: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceInfoResponse> {
        self.modifyServiceInfo(.init(serviceId: serviceId, description: description, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 修改服务基本信息
    @inlinable
    public func modifyServiceInfo(serviceId: String, description: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceInfoResponse {
        try await self.modifyServiceInfo(.init(serviceId: serviceId, description: description, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
