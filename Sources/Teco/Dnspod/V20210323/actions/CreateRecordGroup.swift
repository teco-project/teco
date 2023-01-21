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

extension Dnspod {
    /// CreateRecordGroup请求参数结构体
    public struct CreateRecordGroupRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 分组名称
        public let groupName: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, groupName: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.groupName = groupName
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case groupName = "GroupName"
            case domainId = "DomainId"
        }
    }

    /// CreateRecordGroup返回参数结构体
    public struct CreateRecordGroupResponse: TCResponseModel {
        /// 新增的分组 ID
        public let groupId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 添加记录分组
    @inlinable
    public func createRecordGroup(_ input: CreateRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordGroupResponse> {
        self.client.execute(action: "CreateRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加记录分组
    @inlinable
    public func createRecordGroup(_ input: CreateRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordGroupResponse {
        try await self.client.execute(action: "CreateRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加记录分组
    @inlinable
    public func createRecordGroup(domain: String, groupName: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecordGroupResponse> {
        self.createRecordGroup(CreateRecordGroupRequest(domain: domain, groupName: groupName, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加记录分组
    @inlinable
    public func createRecordGroup(domain: String, groupName: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordGroupResponse {
        try await self.createRecordGroup(CreateRecordGroupRequest(domain: domain, groupName: groupName, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
