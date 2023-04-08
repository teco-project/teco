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

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// ModifyBandwidthPackageAttribute请求参数结构体
    public struct ModifyBandwidthPackageAttributeRequest: TCRequestModel {
        /// 带宽包唯一标识ID
        public let bandwidthPackageId: String

        /// 带宽包名称
        public let bandwidthPackageName: String

        /// 带宽包计费模式，示例 ：
        /// 'TOP5_POSTPAID_BY_MONTH'（后付费-TOP5计费）
        public let chargeType: String?

        public init(bandwidthPackageId: String, bandwidthPackageName: String, chargeType: String? = nil) {
            self.bandwidthPackageId = bandwidthPackageId
            self.bandwidthPackageName = bandwidthPackageName
            self.chargeType = chargeType
        }

        enum CodingKeys: String, CodingKey {
            case bandwidthPackageId = "BandwidthPackageId"
            case bandwidthPackageName = "BandwidthPackageName"
            case chargeType = "ChargeType"
        }
    }

    /// ModifyBandwidthPackageAttribute返回参数结构体
    public struct ModifyBandwidthPackageAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改带宽包属性
    ///
    /// 接口用于修改带宽包属性，包括带宽包名字等
    @inlinable @discardableResult
    public func modifyBandwidthPackageAttribute(_ input: ModifyBandwidthPackageAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBandwidthPackageAttributeResponse> {
        self.client.execute(action: "ModifyBandwidthPackageAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改带宽包属性
    ///
    /// 接口用于修改带宽包属性，包括带宽包名字等
    @inlinable @discardableResult
    public func modifyBandwidthPackageAttribute(_ input: ModifyBandwidthPackageAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBandwidthPackageAttributeResponse {
        try await self.client.execute(action: "ModifyBandwidthPackageAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改带宽包属性
    ///
    /// 接口用于修改带宽包属性，包括带宽包名字等
    @inlinable @discardableResult
    public func modifyBandwidthPackageAttribute(bandwidthPackageId: String, bandwidthPackageName: String, chargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBandwidthPackageAttributeResponse> {
        self.modifyBandwidthPackageAttribute(.init(bandwidthPackageId: bandwidthPackageId, bandwidthPackageName: bandwidthPackageName, chargeType: chargeType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改带宽包属性
    ///
    /// 接口用于修改带宽包属性，包括带宽包名字等
    @inlinable @discardableResult
    public func modifyBandwidthPackageAttribute(bandwidthPackageId: String, bandwidthPackageName: String, chargeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBandwidthPackageAttributeResponse {
        try await self.modifyBandwidthPackageAttribute(.init(bandwidthPackageId: bandwidthPackageId, bandwidthPackageName: bandwidthPackageName, chargeType: chargeType), region: region, logger: logger, on: eventLoop)
    }
}
