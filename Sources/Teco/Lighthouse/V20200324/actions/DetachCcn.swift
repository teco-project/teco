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

extension Lighthouse {
    /// DetachCcn请求参数结构体
    public struct DetachCcnRequest: TCRequestModel {
        /// 云联网实例ID。
        public let ccnId: String

        public init(ccnId: String) {
            self.ccnId = ccnId
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
        }
    }

    /// DetachCcn返回参数结构体
    public struct DetachCcnResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解关联云联网
    ///
    /// 本接口 (AttachCcn) 用于解除与云联网的关联。
    @inlinable @discardableResult
    public func detachCcn(_ input: DetachCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachCcnResponse> {
        self.client.execute(action: "DetachCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解关联云联网
    ///
    /// 本接口 (AttachCcn) 用于解除与云联网的关联。
    @inlinable @discardableResult
    public func detachCcn(_ input: DetachCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachCcnResponse {
        try await self.client.execute(action: "DetachCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解关联云联网
    ///
    /// 本接口 (AttachCcn) 用于解除与云联网的关联。
    @inlinable @discardableResult
    public func detachCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachCcnResponse> {
        self.detachCcn(DetachCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }

    /// 解关联云联网
    ///
    /// 本接口 (AttachCcn) 用于解除与云联网的关联。
    @inlinable @discardableResult
    public func detachCcn(ccnId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachCcnResponse {
        try await self.detachCcn(DetachCcnRequest(ccnId: ccnId), region: region, logger: logger, on: eventLoop)
    }
}
