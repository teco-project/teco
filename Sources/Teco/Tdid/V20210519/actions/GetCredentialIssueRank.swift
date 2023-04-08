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

extension Tdid {
    /// GetCredentialIssueRank请求参数结构体
    public struct GetCredentialIssueRankRequest: TCRequestModel {
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

    /// GetCredentialIssueRank返回参数结构体
    public struct GetCredentialIssueRankResponse: TCResponseModel {
        /// Rank集合
        public let rankIssueResult: [CptIssueRank]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rankIssueResult = "RankIssueResult"
            case requestId = "RequestId"
        }
    }

    /// 凭证颁发机构排行
    ///
    /// 凭证颁发按机构排行
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getCredentialIssueRank(_ input: GetCredentialIssueRankRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialIssueRankResponse> {
        fatalError("GetCredentialIssueRank is no longer available.")
    }

    /// 凭证颁发机构排行
    ///
    /// 凭证颁发按机构排行
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getCredentialIssueRank(_ input: GetCredentialIssueRankRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialIssueRankResponse {
        fatalError("GetCredentialIssueRank is no longer available.")
    }

    /// 凭证颁发机构排行
    ///
    /// 凭证颁发按机构排行
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getCredentialIssueRank(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialIssueRankResponse> {
        fatalError("GetCredentialIssueRank is no longer available.")
    }

    /// 凭证颁发机构排行
    ///
    /// 凭证颁发按机构排行
    @available(*, unavailable, message: "下线已有内测接口，待上线正式版本的接口")
    @inlinable
    public func getCredentialIssueRank(startTime: String, endTime: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCredentialIssueRankResponse {
        fatalError("GetCredentialIssueRank is no longer available.")
    }
}
