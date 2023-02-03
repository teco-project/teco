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

extension Vpc {
    /// ResetAttachCcnInstances请求参数结构体
    public struct ResetAttachCcnInstancesRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// CCN所属UIN（根账号）。
        public let ccnUin: String

        /// 重新申请关联网络实例列表。
        public let instances: [CcnInstance]

        public init(ccnId: String, ccnUin: String, instances: [CcnInstance]) {
            self.ccnId = ccnId
            self.ccnUin = ccnUin
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case ccnUin = "CcnUin"
            case instances = "Instances"
        }
    }

    /// ResetAttachCcnInstances返回参数结构体
    public struct ResetAttachCcnInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重新申请关联实例
    ///
    /// 本接口（ResetAttachCcnInstances）用于跨账号关联实例申请过期时，重新申请关联操作。
    @inlinable @discardableResult
    public func resetAttachCcnInstances(_ input: ResetAttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAttachCcnInstancesResponse> {
        self.client.execute(action: "ResetAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新申请关联实例
    ///
    /// 本接口（ResetAttachCcnInstances）用于跨账号关联实例申请过期时，重新申请关联操作。
    @inlinable @discardableResult
    public func resetAttachCcnInstances(_ input: ResetAttachCcnInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAttachCcnInstancesResponse {
        try await self.client.execute(action: "ResetAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新申请关联实例
    ///
    /// 本接口（ResetAttachCcnInstances）用于跨账号关联实例申请过期时，重新申请关联操作。
    @inlinable @discardableResult
    public func resetAttachCcnInstances(ccnId: String, ccnUin: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAttachCcnInstancesResponse> {
        let input = ResetAttachCcnInstancesRequest(ccnId: ccnId, ccnUin: ccnUin, instances: instances)
        return self.client.execute(action: "ResetAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新申请关联实例
    ///
    /// 本接口（ResetAttachCcnInstances）用于跨账号关联实例申请过期时，重新申请关联操作。
    @inlinable @discardableResult
    public func resetAttachCcnInstances(ccnId: String, ccnUin: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAttachCcnInstancesResponse {
        let input = ResetAttachCcnInstancesRequest(ccnId: ccnId, ccnUin: ccnUin, instances: instances)
        return try await self.client.execute(action: "ResetAttachCcnInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
