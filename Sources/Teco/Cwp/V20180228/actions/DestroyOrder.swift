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

extension Cwp {
    /// DestroyOrder请求参数结构体
    public struct DestroyOrderRequest: TCRequestModel {
        /// 资源ID
        public let resourceId: String

        /// 授权类型 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        public let licenseType: UInt64

        public init(resourceId: String, licenseType: UInt64) {
            self.resourceId = resourceId
            self.licenseType = licenseType
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case licenseType = "LicenseType"
        }
    }

    /// DestroyOrder返回参数结构体
    public struct DestroyOrderResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁订单
    ///
    /// DestroyOrder  该接口可以对资源销毁.
    @inlinable @discardableResult
    public func destroyOrder(_ input: DestroyOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyOrderResponse> {
        self.client.execute(action: "DestroyOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁订单
    ///
    /// DestroyOrder  该接口可以对资源销毁.
    @inlinable @discardableResult
    public func destroyOrder(_ input: DestroyOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyOrderResponse {
        try await self.client.execute(action: "DestroyOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁订单
    ///
    /// DestroyOrder  该接口可以对资源销毁.
    @inlinable @discardableResult
    public func destroyOrder(resourceId: String, licenseType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyOrderResponse> {
        self.destroyOrder(.init(resourceId: resourceId, licenseType: licenseType), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁订单
    ///
    /// DestroyOrder  该接口可以对资源销毁.
    @inlinable @discardableResult
    public func destroyOrder(resourceId: String, licenseType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyOrderResponse {
        try await self.destroyOrder(.init(resourceId: resourceId, licenseType: licenseType), region: region, logger: logger, on: eventLoop)
    }
}
