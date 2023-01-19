//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DeleteRecordGroup请求参数结构体
    public struct DeleteRecordGroupRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 分组 ID
        public let groupId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, groupId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.groupId = groupId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case groupId = "GroupId"
            case domainId = "DomainId"
        }
    }

    /// DeleteRecordGroup返回参数结构体
    public struct DeleteRecordGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除记录分组
    @inlinable
    public func deleteRecordGroup(_ input: DeleteRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordGroupResponse> {
        self.client.execute(action: "DeleteRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除记录分组
    @inlinable
    public func deleteRecordGroup(_ input: DeleteRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordGroupResponse {
        try await self.client.execute(action: "DeleteRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除记录分组
    @inlinable
    public func deleteRecordGroup(domain: String, groupId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRecordGroupResponse> {
        self.deleteRecordGroup(DeleteRecordGroupRequest(domain: domain, groupId: groupId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除记录分组
    @inlinable
    public func deleteRecordGroup(domain: String, groupId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecordGroupResponse {
        try await self.deleteRecordGroup(DeleteRecordGroupRequest(domain: domain, groupId: groupId, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
