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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Bmeip {
    /// CreateEipAcl请求参数结构体
    public struct CreateEipAclRequest: TCRequestModel {
        /// ACL 名称
        public let aclName: String

        /// ACL 状态 0：无状态，1：有状态
        public let status: UInt64

        public init(aclName: String, status: UInt64) {
            self.aclName = aclName
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case aclName = "AclName"
            case status = "Status"
        }
    }

    /// CreateEipAcl返回参数结构体
    public struct CreateEipAclResponse: TCResponseModel {
        /// ACL 实例 ID
        public let aclId: String

        /// ACL 实例状态
        public let status: UInt64

        /// ACL 实例名称
        public let aclName: String

        /// ACL 实例创建时间
        public let createdAt: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case aclId = "AclId"
            case status = "Status"
            case aclName = "AclName"
            case createdAt = "CreatedAt"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石弹性公网 EIP ACL
    @inlinable
    public func createEipAcl(_ input: CreateEipAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEipAclResponse> {
        self.client.execute(action: "CreateEipAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石弹性公网 EIP ACL
    @inlinable
    public func createEipAcl(_ input: CreateEipAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEipAclResponse {
        try await self.client.execute(action: "CreateEipAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石弹性公网 EIP ACL
    @inlinable
    public func createEipAcl(aclName: String, status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEipAclResponse> {
        self.createEipAcl(.init(aclName: aclName, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 创建黑石弹性公网 EIP ACL
    @inlinable
    public func createEipAcl(aclName: String, status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEipAclResponse {
        try await self.createEipAcl(.init(aclName: aclName, status: status), region: region, logger: logger, on: eventLoop)
    }
}
