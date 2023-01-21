//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gse {
    /// AttachCcnInstances请求参数结构体
    public struct AttachCcnInstancesRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String?

        /// 云联网账号 Uin
        public let accountId: String?

        /// 云联网 Id
        public let ccnId: String?

        public init(fleetId: String? = nil, accountId: String? = nil, ccnId: String? = nil) {
            self.fleetId = fleetId
            self.accountId = accountId
            self.ccnId = ccnId
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case accountId = "AccountId"
            case ccnId = "CcnId"
        }
    }

    /// AttachCcnInstances返回参数结构体
    public struct AttachCcnInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关联云联网实例
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（AttachCcnInstances）用于关联云联网实例。
    @inlinable @discardableResult
    public func attachCcnInstances(_ input: AttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachCcnInstancesResponse> {
        self.client.execute(action: "AttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关联云联网实例
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（AttachCcnInstances）用于关联云联网实例。
    @inlinable @discardableResult
    public func attachCcnInstances(_ input: AttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachCcnInstancesResponse {
        try await self.client.execute(action: "AttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关联云联网实例
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（AttachCcnInstances）用于关联云联网实例。
    @inlinable @discardableResult
    public func attachCcnInstances(fleetId: String? = nil, accountId: String? = nil, ccnId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachCcnInstancesResponse> {
        self.attachCcnInstances(AttachCcnInstancesRequest(fleetId: fleetId, accountId: accountId, ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }

    /// 关联云联网实例
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（AttachCcnInstances）用于关联云联网实例。
    @inlinable @discardableResult
    public func attachCcnInstances(fleetId: String? = nil, accountId: String? = nil, ccnId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachCcnInstancesResponse {
        try await self.attachCcnInstances(AttachCcnInstancesRequest(fleetId: fleetId, accountId: accountId, ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }
}
