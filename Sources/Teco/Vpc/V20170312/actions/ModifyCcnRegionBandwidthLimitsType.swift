//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyCcnRegionBandwidthLimitsType请求参数结构体
    public struct ModifyCcnRegionBandwidthLimitsTypeRequest: TCRequestModel {
        /// 云联网实例ID。
        public let ccnId: String

        /// 云联网限速类型，INTER_REGION_LIMIT：地域间限速，OUTER_REGION_LIMIT：地域出口限速。
        public let bandwidthLimitType: String?

        public init(ccnId: String, bandwidthLimitType: String? = nil) {
            self.ccnId = ccnId
            self.bandwidthLimitType = bandwidthLimitType
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case bandwidthLimitType = "BandwidthLimitType"
        }
    }

    /// ModifyCcnRegionBandwidthLimitsType返回参数结构体
    public struct ModifyCcnRegionBandwidthLimitsTypeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 后付费产品修改带宽限速策略
    ///
    /// 本接口（ModifyCcnRegionBandwidthLimitsType）用于修改后付费云联网实例修改带宽限速策略。
    @inlinable
    public func modifyCcnRegionBandwidthLimitsType(_ input: ModifyCcnRegionBandwidthLimitsTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCcnRegionBandwidthLimitsTypeResponse > {
        self.client.execute(action: "ModifyCcnRegionBandwidthLimitsType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 后付费产品修改带宽限速策略
    ///
    /// 本接口（ModifyCcnRegionBandwidthLimitsType）用于修改后付费云联网实例修改带宽限速策略。
    @inlinable
    public func modifyCcnRegionBandwidthLimitsType(_ input: ModifyCcnRegionBandwidthLimitsTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnRegionBandwidthLimitsTypeResponse {
        try await self.client.execute(action: "ModifyCcnRegionBandwidthLimitsType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 后付费产品修改带宽限速策略
    ///
    /// 本接口（ModifyCcnRegionBandwidthLimitsType）用于修改后付费云联网实例修改带宽限速策略。
    @inlinable
    public func modifyCcnRegionBandwidthLimitsType(ccnId: String, bandwidthLimitType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCcnRegionBandwidthLimitsTypeResponse > {
        self.modifyCcnRegionBandwidthLimitsType(ModifyCcnRegionBandwidthLimitsTypeRequest(ccnId: ccnId, bandwidthLimitType: bandwidthLimitType), logger: logger, on: eventLoop)
    }

    /// 后付费产品修改带宽限速策略
    ///
    /// 本接口（ModifyCcnRegionBandwidthLimitsType）用于修改后付费云联网实例修改带宽限速策略。
    @inlinable
    public func modifyCcnRegionBandwidthLimitsType(ccnId: String, bandwidthLimitType: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnRegionBandwidthLimitsTypeResponse {
        try await self.modifyCcnRegionBandwidthLimitsType(ModifyCcnRegionBandwidthLimitsTypeRequest(ccnId: ccnId, bandwidthLimitType: bandwidthLimitType), logger: logger, on: eventLoop)
    }
}
