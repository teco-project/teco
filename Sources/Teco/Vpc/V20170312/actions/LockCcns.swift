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
    /// LockCcns请求参数结构体
    public struct LockCcnsRequest: TCRequestModel {
        public init() {
        }
    }

    /// LockCcns返回参数结构体
    public struct LockCcnsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全锁定云联网实例
    ///
    /// 本接口（LockCcns）用于锁定云联网实例
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（LockCcnBandwidths）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func lockCcns(_ input: LockCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LockCcnsResponse> {
        self.client.execute(action: "LockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全锁定云联网实例
    ///
    /// 本接口（LockCcns）用于锁定云联网实例
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（LockCcnBandwidths）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func lockCcns(_ input: LockCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LockCcnsResponse {
        try await self.client.execute(action: "LockCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全锁定云联网实例
    ///
    /// 本接口（LockCcns）用于锁定云联网实例
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（LockCcnBandwidths）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func lockCcns(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LockCcnsResponse> {
        self.lockCcns(LockCcnsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 安全锁定云联网实例
    ///
    /// 本接口（LockCcns）用于锁定云联网实例
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（LockCcnBandwidths）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func lockCcns(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LockCcnsResponse {
        try await self.lockCcns(LockCcnsRequest(), region: region, logger: logger, on: eventLoop)
    }
}
