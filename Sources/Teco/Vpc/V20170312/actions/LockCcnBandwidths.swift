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

extension Vpc {
    /// LockCcnBandwidths请求参数结构体
    public struct LockCcnBandwidthsRequest: TCRequestModel {
        /// 带宽实例的唯一ID数组。
        public let instances: [CcnFlowLock]

        public init(instances: [CcnFlowLock]) {
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
        }
    }

    /// LockCcnBandwidths返回参数结构体
    public struct LockCcnBandwidthsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全锁定云联网带宽
    ///
    /// 本接口（LockCcnBandwidths）用户锁定云联网限速实例。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（LockCcns）。
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。
    @inlinable @discardableResult
    public func lockCcnBandwidths(_ input: LockCcnBandwidthsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LockCcnBandwidthsResponse> {
        self.client.execute(action: "LockCcnBandwidths", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全锁定云联网带宽
    ///
    /// 本接口（LockCcnBandwidths）用户锁定云联网限速实例。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（LockCcns）。
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。
    @inlinable @discardableResult
    public func lockCcnBandwidths(_ input: LockCcnBandwidthsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LockCcnBandwidthsResponse {
        try await self.client.execute(action: "LockCcnBandwidths", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全锁定云联网带宽
    ///
    /// 本接口（LockCcnBandwidths）用户锁定云联网限速实例。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（LockCcns）。
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。
    @inlinable @discardableResult
    public func lockCcnBandwidths(instances: [CcnFlowLock], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LockCcnBandwidthsResponse> {
        self.lockCcnBandwidths(.init(instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 安全锁定云联网带宽
    ///
    /// 本接口（LockCcnBandwidths）用户锁定云联网限速实例。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（LockCcns）。
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。
    @inlinable @discardableResult
    public func lockCcnBandwidths(instances: [CcnFlowLock], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LockCcnBandwidthsResponse {
        try await self.lockCcnBandwidths(.init(instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
