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

extension Tcr {
    /// DescribeRepositoryFilterPersonal请求参数结构体
    public struct DescribeRepositoryFilterPersonalRequest: TCRequestModel {
        /// 搜索镜像名
        public let repoName: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回最大数量，默认 20，最大100
        public let limit: Int64?

        /// 筛选条件：1表示public，0表示private
        public let `public`: Int64?

        /// 命名空间
        public let namespace: String?

        public init(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, public: Int64? = nil, namespace: String? = nil) {
            self.repoName = repoName
            self.offset = offset
            self.limit = limit
            self.public = `public`
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case offset = "Offset"
            case limit = "Limit"
            case `public` = "Public"
            case namespace = "Namespace"
        }
    }

    /// DescribeRepositoryFilterPersonal返回参数结构体
    public struct DescribeRepositoryFilterPersonalResponse: TCResponseModel {
        /// 仓库信息
        public let data: SearchUserRepositoryResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取满足输入搜索条件的个人版镜像仓库
    ///
    /// 用于在个人版镜像仓库中，获取满足输入搜索条件的用户镜像仓库
    @inlinable
    public func describeRepositoryFilterPersonal(_ input: DescribeRepositoryFilterPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryFilterPersonalResponse> {
        self.client.execute(action: "DescribeRepositoryFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取满足输入搜索条件的个人版镜像仓库
    ///
    /// 用于在个人版镜像仓库中，获取满足输入搜索条件的用户镜像仓库
    @inlinable
    public func describeRepositoryFilterPersonal(_ input: DescribeRepositoryFilterPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryFilterPersonalResponse {
        try await self.client.execute(action: "DescribeRepositoryFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取满足输入搜索条件的个人版镜像仓库
    ///
    /// 用于在个人版镜像仓库中，获取满足输入搜索条件的用户镜像仓库
    @inlinable
    public func describeRepositoryFilterPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, public: Int64? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryFilterPersonalResponse> {
        let input = DescribeRepositoryFilterPersonalRequest(repoName: repoName, offset: offset, limit: limit, public: `public`, namespace: namespace)
        return self.client.execute(action: "DescribeRepositoryFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取满足输入搜索条件的个人版镜像仓库
    ///
    /// 用于在个人版镜像仓库中，获取满足输入搜索条件的用户镜像仓库
    @inlinable
    public func describeRepositoryFilterPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, public: Int64? = nil, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryFilterPersonalResponse {
        let input = DescribeRepositoryFilterPersonalRequest(repoName: repoName, offset: offset, limit: limit, public: `public`, namespace: namespace)
        return try await self.client.execute(action: "DescribeRepositoryFilterPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
