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

extension Ecm {
    /// DeleteHaVip请求参数结构体
    public struct DeleteHaVipRequest: TCRequestModel {
        /// HAVIP唯一ID，形如：havip-9o233uri。
        public let haVipId: String

        public init(haVipId: String) {
            self.haVipId = haVipId
        }

        enum CodingKeys: String, CodingKey {
            case haVipId = "HaVipId"
        }
    }

    /// DeleteHaVip返回参数结构体
    public struct DeleteHaVipResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除HAVIP
    ///
    /// 用于删除高可用虚拟IP（HAVIP）
    @inlinable @discardableResult
    public func deleteHaVip(_ input: DeleteHaVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHaVipResponse> {
        self.client.execute(action: "DeleteHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除HAVIP
    ///
    /// 用于删除高可用虚拟IP（HAVIP）
    @inlinable @discardableResult
    public func deleteHaVip(_ input: DeleteHaVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHaVipResponse {
        try await self.client.execute(action: "DeleteHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除HAVIP
    ///
    /// 用于删除高可用虚拟IP（HAVIP）
    @inlinable @discardableResult
    public func deleteHaVip(haVipId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHaVipResponse> {
        let input = DeleteHaVipRequest(haVipId: haVipId)
        return self.client.execute(action: "DeleteHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除HAVIP
    ///
    /// 用于删除高可用虚拟IP（HAVIP）
    @inlinable @discardableResult
    public func deleteHaVip(haVipId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHaVipResponse {
        let input = DeleteHaVipRequest(haVipId: haVipId)
        return try await self.client.execute(action: "DeleteHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
