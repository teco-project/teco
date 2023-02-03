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
    /// ModifyRecordGroup请求参数结构体
    public struct ModifyRecordGroupRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 分组名称
        public let groupName: String

        /// 要修改的分组 ID
        public let groupId: UInt64

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        public let domainId: UInt64?

        public init(domain: String, groupName: String, groupId: UInt64, domainId: UInt64? = nil) {
            self.domain = domain
            self.groupName = groupName
            self.groupId = groupId
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case groupName = "GroupName"
            case groupId = "GroupId"
            case domainId = "DomainId"
        }
    }

    /// ModifyRecordGroup返回参数结构体
    public struct ModifyRecordGroupResponse: TCResponseModel {
        /// 修改的分组 ID
        public let groupId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case requestId = "RequestId"
        }
    }

    /// 修改记录分组
    @inlinable
    public func modifyRecordGroup(_ input: ModifyRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordGroupResponse> {
        self.client.execute(action: "ModifyRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改记录分组
    @inlinable
    public func modifyRecordGroup(_ input: ModifyRecordGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordGroupResponse {
        try await self.client.execute(action: "ModifyRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改记录分组
    @inlinable
    public func modifyRecordGroup(domain: String, groupName: String, groupId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordGroupResponse> {
        let input = ModifyRecordGroupRequest(domain: domain, groupName: groupName, groupId: groupId, domainId: domainId)
        return self.client.execute(action: "ModifyRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改记录分组
    @inlinable
    public func modifyRecordGroup(domain: String, groupName: String, groupId: UInt64, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordGroupResponse {
        let input = ModifyRecordGroupRequest(domain: domain, groupName: groupName, groupId: groupId, domainId: domainId)
        return try await self.client.execute(action: "ModifyRecordGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
