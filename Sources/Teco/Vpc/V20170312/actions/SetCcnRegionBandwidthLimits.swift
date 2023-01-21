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
    /// SetCcnRegionBandwidthLimits请求参数结构体
    public struct SetCcnRegionBandwidthLimitsRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// 云联网（CCN）各地域出带宽上限。
        public let ccnRegionBandwidthLimits: [CcnRegionBandwidthLimit]

        /// 是否恢复云联网地域出口/地域间带宽限速为默认值（1Gbps）。false表示不恢复；true表示恢复。恢复默认值后，限速实例将不在控制台展示。该参数默认为 false，不恢复。
        public let setDefaultLimitFlag: Bool?

        public init(ccnId: String, ccnRegionBandwidthLimits: [CcnRegionBandwidthLimit], setDefaultLimitFlag: Bool? = nil) {
            self.ccnId = ccnId
            self.ccnRegionBandwidthLimits = ccnRegionBandwidthLimits
            self.setDefaultLimitFlag = setDefaultLimitFlag
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case ccnRegionBandwidthLimits = "CcnRegionBandwidthLimits"
            case setDefaultLimitFlag = "SetDefaultLimitFlag"
        }
    }

    /// SetCcnRegionBandwidthLimits返回参数结构体
    public struct SetCcnRegionBandwidthLimitsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置云联网各地域出带宽上限或地域间上限
    ///
    /// 本接口（SetCcnRegionBandwidthLimits）用于设置云联网（CCN）各地域出带宽上限，或者地域间带宽上限。
    @inlinable @discardableResult
    public func setCcnRegionBandwidthLimits(_ input: SetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCcnRegionBandwidthLimitsResponse> {
        self.client.execute(action: "SetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置云联网各地域出带宽上限或地域间上限
    ///
    /// 本接口（SetCcnRegionBandwidthLimits）用于设置云联网（CCN）各地域出带宽上限，或者地域间带宽上限。
    @inlinable @discardableResult
    public func setCcnRegionBandwidthLimits(_ input: SetCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCcnRegionBandwidthLimitsResponse {
        try await self.client.execute(action: "SetCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置云联网各地域出带宽上限或地域间上限
    ///
    /// 本接口（SetCcnRegionBandwidthLimits）用于设置云联网（CCN）各地域出带宽上限，或者地域间带宽上限。
    @inlinable @discardableResult
    public func setCcnRegionBandwidthLimits(ccnId: String, ccnRegionBandwidthLimits: [CcnRegionBandwidthLimit], setDefaultLimitFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetCcnRegionBandwidthLimitsResponse> {
        self.setCcnRegionBandwidthLimits(SetCcnRegionBandwidthLimitsRequest(ccnId: ccnId, ccnRegionBandwidthLimits: ccnRegionBandwidthLimits, setDefaultLimitFlag: setDefaultLimitFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 设置云联网各地域出带宽上限或地域间上限
    ///
    /// 本接口（SetCcnRegionBandwidthLimits）用于设置云联网（CCN）各地域出带宽上限，或者地域间带宽上限。
    @inlinable @discardableResult
    public func setCcnRegionBandwidthLimits(ccnId: String, ccnRegionBandwidthLimits: [CcnRegionBandwidthLimit], setDefaultLimitFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetCcnRegionBandwidthLimitsResponse {
        try await self.setCcnRegionBandwidthLimits(SetCcnRegionBandwidthLimitsRequest(ccnId: ccnId, ccnRegionBandwidthLimits: ccnRegionBandwidthLimits, setDefaultLimitFlag: setDefaultLimitFlag), region: region, logger: logger, on: eventLoop)
    }
}
