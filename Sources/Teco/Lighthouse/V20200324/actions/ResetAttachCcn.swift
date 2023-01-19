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

extension Lighthouse {
    /// ResetAttachCcn请求参数结构体
    public struct ResetAttachCcnRequest: TCRequestModel {
        /// 云联网实例ID。
        public let ccnId: String

        public init(ccnId: String) {
            self.ccnId = ccnId
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
        }
    }

    /// ResetAttachCcn返回参数结构体
    public struct ResetAttachCcnResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重新申请关联云联网
    ///
    /// 本接口 (ResetAttachCcn) 用于关联云联网实例申请过期时，重新申请关联操作。
    @inlinable
    public func resetAttachCcn(_ input: ResetAttachCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAttachCcnResponse> {
        self.client.execute(action: "ResetAttachCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新申请关联云联网
    ///
    /// 本接口 (ResetAttachCcn) 用于关联云联网实例申请过期时，重新申请关联操作。
    @inlinable
    public func resetAttachCcn(_ input: ResetAttachCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAttachCcnResponse {
        try await self.client.execute(action: "ResetAttachCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新申请关联云联网
    ///
    /// 本接口 (ResetAttachCcn) 用于关联云联网实例申请过期时，重新申请关联操作。
    @inlinable
    public func resetAttachCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAttachCcnResponse> {
        self.resetAttachCcn(ResetAttachCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }

    /// 重新申请关联云联网
    ///
    /// 本接口 (ResetAttachCcn) 用于关联云联网实例申请过期时，重新申请关联操作。
    @inlinable
    public func resetAttachCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAttachCcnResponse {
        try await self.resetAttachCcn(ResetAttachCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }
}
