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

extension Tsf {
    /// DescribeImageRepository请求参数结构体
    public struct DescribeImageRepositoryRequest: TCRequestModel {
        /// 仓库名，搜索关键字,不带命名空间的
        public let searchWord: String?

        /// 偏移量，取值从0开始
        public let offset: Int64?

        /// 分页个数，默认为20， 取值应为1~100
        public let limit: Int64?

        /// 企业: tcr ；个人: personal或者不填
        public let repoType: String?

        /// 应用id
        public let applicationId: String?

        /// TcrRepoInfo值
        public let tcrRepoInfo: TcrRepoInfo?

        public init(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, repoType: String? = nil, applicationId: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.repoType = repoType
            self.applicationId = applicationId
            self.tcrRepoInfo = tcrRepoInfo
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case repoType = "RepoType"
            case applicationId = "ApplicationId"
            case tcrRepoInfo = "TcrRepoInfo"
        }
    }

    /// DescribeImageRepository返回参数结构体
    public struct DescribeImageRepositoryResponse: TCResponseModel {
        /// 查询的权限数据对象
        public let result: ImageRepositoryResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库列表
    @inlinable
    public func describeImageRepository(_ input: DescribeImageRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageRepositoryResponse> {
        self.client.execute(action: "DescribeImageRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库列表
    @inlinable
    public func describeImageRepository(_ input: DescribeImageRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRepositoryResponse {
        try await self.client.execute(action: "DescribeImageRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库列表
    @inlinable
    public func describeImageRepository(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, repoType: String? = nil, applicationId: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageRepositoryResponse> {
        let input = DescribeImageRepositoryRequest(searchWord: searchWord, offset: offset, limit: limit, repoType: repoType, applicationId: applicationId, tcrRepoInfo: tcrRepoInfo)
        return self.client.execute(action: "DescribeImageRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库列表
    @inlinable
    public func describeImageRepository(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, repoType: String? = nil, applicationId: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageRepositoryResponse {
        let input = DescribeImageRepositoryRequest(searchWord: searchWord, offset: offset, limit: limit, repoType: repoType, applicationId: applicationId, tcrRepoInfo: tcrRepoInfo)
        return try await self.client.execute(action: "DescribeImageRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
