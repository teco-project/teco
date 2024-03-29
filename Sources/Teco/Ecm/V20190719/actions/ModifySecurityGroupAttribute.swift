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

import Logging
import NIOCore
import TecoCore

extension Ecm {
    /// ModifySecurityGroupAttribute请求参数结构体
    public struct ModifySecurityGroupAttributeRequest: TCRequest {
        /// 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 安全组名称，可任意命名，但不得超过60个字符。
        public let groupName: String?

        /// 安全组备注，最多100个字符。
        public let groupDescription: String?

        public init(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil) {
            self.securityGroupId = securityGroupId
            self.groupName = groupName
            self.groupDescription = groupDescription
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case groupName = "GroupName"
            case groupDescription = "GroupDescription"
        }
    }

    /// ModifySecurityGroupAttribute返回参数结构体
    public struct ModifySecurityGroupAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全组属性
    @inlinable @discardableResult
    public func modifySecurityGroupAttribute(_ input: ModifySecurityGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupAttributeResponse> {
        self.client.execute(action: "ModifySecurityGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全组属性
    @inlinable @discardableResult
    public func modifySecurityGroupAttribute(_ input: ModifySecurityGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupAttributeResponse {
        try await self.client.execute(action: "ModifySecurityGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全组属性
    @inlinable @discardableResult
    public func modifySecurityGroupAttribute(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecurityGroupAttributeResponse> {
        self.modifySecurityGroupAttribute(.init(securityGroupId: securityGroupId, groupName: groupName, groupDescription: groupDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 修改安全组属性
    @inlinable @discardableResult
    public func modifySecurityGroupAttribute(securityGroupId: String, groupName: String? = nil, groupDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityGroupAttributeResponse {
        try await self.modifySecurityGroupAttribute(.init(securityGroupId: securityGroupId, groupName: groupName, groupDescription: groupDescription), region: region, logger: logger, on: eventLoop)
    }
}
