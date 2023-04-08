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

extension Tdid {
    /// GetCredentialIssueTrend请求参数结构体
    public struct GetCredentialIssueTrendRequest: TCRequestModel {
        /// 开始时间（支持到天 2021-4-23）
        public let startTime: String

        /// 结束时间（支持到天 2021-4-23）
        public let endTime: String

        /// 网络ID
        public let clusterId: String?

        public init(startTime: String, endTime: String, clusterId: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case clusterId = "ClusterId"
        }
    }

    /// GetCredentialIssueTrend返回参数结构体
    public struct GetCredentialIssueTrendResponse: TCResponseModel {
        /// Trend集合
        public let trend: [Trend]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trend = "Trend"
            case requestId = "RequestId"
        }
    }

    /// 凭证颁发趋势
    @inlinable
    public func getCredentialIssueTrend(_ input: GetCredentialIssueTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialIssueTrendResponse> {
        self.client.execute(action: "GetCredentialIssueTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 凭证颁发趋势
    @inlinable
    public func getCredentialIssueTrend(_ input: GetCredentialIssueTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialIssueTrendResponse {
        try await self.client.execute(action: "GetCredentialIssueTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 凭证颁发趋势
    @inlinable
    public func getCredentialIssueTrend(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialIssueTrendResponse> {
        self.getCredentialIssueTrend(.init(startTime: startTime, endTime: endTime, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 凭证颁发趋势
    @inlinable
    public func getCredentialIssueTrend(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialIssueTrendResponse {
        try await self.getCredentialIssueTrend(.init(startTime: startTime, endTime: endTime, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
