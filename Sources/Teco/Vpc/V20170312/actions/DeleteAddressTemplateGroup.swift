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

extension Vpc {
    /// DeleteAddressTemplateGroup请求参数结构体
    public struct DeleteAddressTemplateGroupRequest: TCRequestModel {
        /// IP地址模板集合实例ID，例如：ipmg-90cex8mq。
        public let addressTemplateGroupId: String

        public init(addressTemplateGroupId: String) {
            self.addressTemplateGroupId = addressTemplateGroupId
        }

        enum CodingKeys: String, CodingKey {
            case addressTemplateGroupId = "AddressTemplateGroupId"
        }
    }

    /// DeleteAddressTemplateGroup返回参数结构体
    public struct DeleteAddressTemplateGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除IP地址模板集合
    ///
    /// 本接口（DeleteAddressTemplateGroup）用于删除IP地址模板集合。
    @inlinable @discardableResult
    public func deleteAddressTemplateGroup(_ input: DeleteAddressTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAddressTemplateGroupResponse> {
        self.client.execute(action: "DeleteAddressTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除IP地址模板集合
    ///
    /// 本接口（DeleteAddressTemplateGroup）用于删除IP地址模板集合。
    @inlinable @discardableResult
    public func deleteAddressTemplateGroup(_ input: DeleteAddressTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAddressTemplateGroupResponse {
        try await self.client.execute(action: "DeleteAddressTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除IP地址模板集合
    ///
    /// 本接口（DeleteAddressTemplateGroup）用于删除IP地址模板集合。
    @inlinable @discardableResult
    public func deleteAddressTemplateGroup(addressTemplateGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAddressTemplateGroupResponse> {
        self.deleteAddressTemplateGroup(.init(addressTemplateGroupId: addressTemplateGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除IP地址模板集合
    ///
    /// 本接口（DeleteAddressTemplateGroup）用于删除IP地址模板集合。
    @inlinable @discardableResult
    public func deleteAddressTemplateGroup(addressTemplateGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAddressTemplateGroupResponse {
        try await self.deleteAddressTemplateGroup(.init(addressTemplateGroupId: addressTemplateGroupId), region: region, logger: logger, on: eventLoop)
    }
}
