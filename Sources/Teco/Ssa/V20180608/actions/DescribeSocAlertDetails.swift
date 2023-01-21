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

extension Ssa {
    /// DescribeSocAlertDetails请求参数结构体
    public struct DescribeSocAlertDetailsRequest: TCRequestModel {
        /// 告警id
        public let alertId: String

        /// 告警时间，取Timestamp字段
        public let alertTimestamp: String?

        public init(alertId: String, alertTimestamp: String? = nil) {
            self.alertId = alertId
            self.alertTimestamp = alertTimestamp
        }

        enum CodingKeys: String, CodingKey {
            case alertId = "AlertId"
            case alertTimestamp = "AlertTimestamp"
        }
    }

    /// DescribeSocAlertDetails返回参数结构体
    public struct DescribeSocAlertDetailsResponse: TCResponseModel {
        /// 返回详情数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: AlertDetail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 告警详情
    ///
    /// 返回告警详情
    @inlinable
    public func describeSocAlertDetails(_ input: DescribeSocAlertDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocAlertDetailsResponse> {
        self.client.execute(action: "DescribeSocAlertDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警详情
    ///
    /// 返回告警详情
    @inlinable
    public func describeSocAlertDetails(_ input: DescribeSocAlertDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocAlertDetailsResponse {
        try await self.client.execute(action: "DescribeSocAlertDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警详情
    ///
    /// 返回告警详情
    @inlinable
    public func describeSocAlertDetails(alertId: String, alertTimestamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocAlertDetailsResponse> {
        self.describeSocAlertDetails(DescribeSocAlertDetailsRequest(alertId: alertId, alertTimestamp: alertTimestamp), region: region, logger: logger, on: eventLoop)
    }

    /// 告警详情
    ///
    /// 返回告警详情
    @inlinable
    public func describeSocAlertDetails(alertId: String, alertTimestamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocAlertDetailsResponse {
        try await self.describeSocAlertDetails(DescribeSocAlertDetailsRequest(alertId: alertId, alertTimestamp: alertTimestamp), region: region, logger: logger, on: eventLoop)
    }
}
