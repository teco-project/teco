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
    /// UnlockCcns请求参数结构体
    public struct UnlockCcnsRequest: TCRequestModel {
        public init() {
        }
    }

    /// UnlockCcns返回参数结构体
    public struct UnlockCcnsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全解锁云联网实例
    ///
    /// 本接口（UnlockCcns）用于解锁云联网实例
    ///
    /// 该接口一般用来解封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间解封禁, 只能按更粗的云联网实例粒度解封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度解封禁（UnlockCcnBandwidths）
    ///
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func unlockCcns(_ input: UnlockCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockCcnsResponse> {
        self.client.execute(action: "UnlockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全解锁云联网实例
    ///
    /// 本接口（UnlockCcns）用于解锁云联网实例
    ///
    /// 该接口一般用来解封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间解封禁, 只能按更粗的云联网实例粒度解封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度解封禁（UnlockCcnBandwidths）
    ///
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func unlockCcns(_ input: UnlockCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockCcnsResponse {
        try await self.client.execute(action: "UnlockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全解锁云联网实例
    ///
    /// 本接口（UnlockCcns）用于解锁云联网实例
    ///
    /// 该接口一般用来解封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间解封禁, 只能按更粗的云联网实例粒度解封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度解封禁（UnlockCcnBandwidths）
    ///
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func unlockCcns(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockCcnsResponse> {
        let input = UnlockCcnsRequest()
        return self.client.execute(action: "UnlockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全解锁云联网实例
    ///
    /// 本接口（UnlockCcns）用于解锁云联网实例
    ///
    /// 该接口一般用来解封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间解封禁, 只能按更粗的云联网实例粒度解封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度解封禁（UnlockCcnBandwidths）
    ///
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func unlockCcns(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockCcnsResponse {
        let input = UnlockCcnsRequest()
        return try await self.client.execute(action: "UnlockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
