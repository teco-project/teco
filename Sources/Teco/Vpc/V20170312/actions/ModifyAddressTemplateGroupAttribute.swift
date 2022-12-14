//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// ModifyAddressTemplateGroupAttribute请求参数结构体
    public struct ModifyAddressTemplateGroupAttributeRequest: TCRequestModel {
        /// IP地址模板集合实例ID，例如：ipmg-2uw6ujo6。
        public let addressTemplateGroupId: String

        /// IP地址模板集合名称。
        public let addressTemplateGroupName: String?

        /// IP地址模板实例ID， 例如：ipm-mdunqeb6。
        public let addressTemplateIds: [String]?

        public init(addressTemplateGroupId: String, addressTemplateGroupName: String? = nil, addressTemplateIds: [String]? = nil) {
            self.addressTemplateGroupId = addressTemplateGroupId
            self.addressTemplateGroupName = addressTemplateGroupName
            self.addressTemplateIds = addressTemplateIds
        }

        enum CodingKeys: String, CodingKey {
            case addressTemplateGroupId = "AddressTemplateGroupId"
            case addressTemplateGroupName = "AddressTemplateGroupName"
            case addressTemplateIds = "AddressTemplateIds"
        }
    }

    /// ModifyAddressTemplateGroupAttribute返回参数结构体
    public struct ModifyAddressTemplateGroupAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改IP地址模板集合
    ///
    /// 本接口（ModifyAddressTemplateGroupAttribute）用于修改IP地址模板集合
    @inlinable
    public func modifyAddressTemplateGroupAttribute(_ input: ModifyAddressTemplateGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAddressTemplateGroupAttributeResponse > {
        self.client.execute(action: "ModifyAddressTemplateGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改IP地址模板集合
    ///
    /// 本接口（ModifyAddressTemplateGroupAttribute）用于修改IP地址模板集合
    @inlinable
    public func modifyAddressTemplateGroupAttribute(_ input: ModifyAddressTemplateGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressTemplateGroupAttributeResponse {
        try await self.client.execute(action: "ModifyAddressTemplateGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改IP地址模板集合
    ///
    /// 本接口（ModifyAddressTemplateGroupAttribute）用于修改IP地址模板集合
    @inlinable
    public func modifyAddressTemplateGroupAttribute(addressTemplateGroupId: String, addressTemplateGroupName: String? = nil, addressTemplateIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAddressTemplateGroupAttributeResponse > {
        self.modifyAddressTemplateGroupAttribute(ModifyAddressTemplateGroupAttributeRequest(addressTemplateGroupId: addressTemplateGroupId, addressTemplateGroupName: addressTemplateGroupName, addressTemplateIds: addressTemplateIds), logger: logger, on: eventLoop)
    }

    /// 修改IP地址模板集合
    ///
    /// 本接口（ModifyAddressTemplateGroupAttribute）用于修改IP地址模板集合
    @inlinable
    public func modifyAddressTemplateGroupAttribute(addressTemplateGroupId: String, addressTemplateGroupName: String? = nil, addressTemplateIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressTemplateGroupAttributeResponse {
        try await self.modifyAddressTemplateGroupAttribute(ModifyAddressTemplateGroupAttributeRequest(addressTemplateGroupId: addressTemplateGroupId, addressTemplateGroupName: addressTemplateGroupName, addressTemplateIds: addressTemplateIds), logger: logger, on: eventLoop)
    }
}
