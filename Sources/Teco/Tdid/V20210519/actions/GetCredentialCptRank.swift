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
    /// GetCredentialCptRank请求参数结构体
    public struct GetCredentialCptRankRequest: TCRequestModel {
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

    /// GetCredentialCptRank返回参数结构体
    public struct GetCredentialCptRankResponse: TCResponseModel {
        /// Rank集合
        public let rankIssueResult: [CptIssueRank]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rankIssueResult = "RankIssueResult"
            case requestId = "RequestId"
        }
    }

    /// 凭证颁发模板排行
    ///
    /// 凭证颁发按机构排行
    @inlinable
    public func getCredentialCptRank(_ input: GetCredentialCptRankRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialCptRankResponse> {
        self.client.execute(action: "GetCredentialCptRank", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 凭证颁发模板排行
    ///
    /// 凭证颁发按机构排行
    @inlinable
    public func getCredentialCptRank(_ input: GetCredentialCptRankRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialCptRankResponse {
        try await self.client.execute(action: "GetCredentialCptRank", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 凭证颁发模板排行
    ///
    /// 凭证颁发按机构排行
    @inlinable
    public func getCredentialCptRank(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialCptRankResponse> {
        let input = GetCredentialCptRankRequest(startTime: startTime, endTime: endTime, clusterId: clusterId)
        return self.client.execute(action: "GetCredentialCptRank", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 凭证颁发模板排行
    ///
    /// 凭证颁发按机构排行
    @inlinable
    public func getCredentialCptRank(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialCptRankResponse {
        let input = GetCredentialCptRankRequest(startTime: startTime, endTime: endTime, clusterId: clusterId)
        return try await self.client.execute(action: "GetCredentialCptRank", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
