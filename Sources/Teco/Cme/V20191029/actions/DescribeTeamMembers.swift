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

import TecoPaginationHelpers

extension Cme {
    /// DescribeTeamMembers请求参数结构体
    public struct DescribeTeamMembersRequest: TCPaginatedRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 团队 ID。
        public let teamId: String

        /// 成员 ID 列表，限指定30个指定成员。如不填，则返回指定团队下的所有成员。
        public let memberIds: [String]?

        /// 分页偏移量，默认值：0
        public let offset: UInt64?

        /// 返回记录条数，默认值：30，最大值：30。
        public let limit: UInt64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以拉取任意团队成员的信息。如果指定操作者，则操作者必须为团队成员。
        public let `operator`: String?

        public init(platform: String, teamId: String, memberIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil) {
            self.platform = platform
            self.teamId = teamId
            self.memberIds = memberIds
            self.offset = offset
            self.limit = limit
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case memberIds = "MemberIds"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTeamMembersResponse) -> DescribeTeamMembersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTeamMembersRequest(platform: self.platform, teamId: self.teamId, memberIds: self.memberIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, operator: self.operator)
        }
    }

    /// DescribeTeamMembers返回参数结构体
    public struct DescribeTeamMembersResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 团队成员列表。
        public let memberSet: [TeamMemberInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case memberSet = "MemberSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TeamMemberInfo] {
            self.memberSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembers(_ input: DescribeTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTeamMembersResponse> {
        self.client.execute(action: "DescribeTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembers(_ input: DescribeTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTeamMembersResponse {
        try await self.client.execute(action: "DescribeTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembers(platform: String, teamId: String, memberIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTeamMembersResponse> {
        let input = DescribeTeamMembersRequest(platform: platform, teamId: teamId, memberIds: memberIds, offset: offset, limit: limit, operator: `operator`)
        return self.client.execute(action: "DescribeTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembers(platform: String, teamId: String, memberIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTeamMembersResponse {
        let input = DescribeTeamMembersRequest(platform: platform, teamId: teamId, memberIds: memberIds, offset: offset, limit: limit, operator: `operator`)
        return try await self.client.execute(action: "DescribeTeamMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembersPaginated(_ input: DescribeTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TeamMemberInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTeamMembers, logger: logger, on: eventLoop)
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembersPaginated(_ input: DescribeTeamMembersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTeamMembersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTeamMembers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取团队成员信息
    ///
    /// 获取指定团队的成员信息。支持获取指定成员的信息，同时也支持分页拉取指定团队的所有成员信息。
    @inlinable
    public func describeTeamMembersPaginator(_ input: DescribeTeamMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTeamMembersRequest, DescribeTeamMembersResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTeamMembersRequest, DescribeTeamMembersResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTeamMembersRequest, DescribeTeamMembersResponse>.ResultSequence(input: input, region: region, command: self.describeTeamMembers, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTeamMembersRequest, DescribeTeamMembersResponse>.ResponseSequence(input: input, region: region, command: self.describeTeamMembers, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
