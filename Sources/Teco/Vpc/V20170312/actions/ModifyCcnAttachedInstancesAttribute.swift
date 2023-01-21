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

extension Vpc {
    /// ModifyCcnAttachedInstancesAttribute请求参数结构体
    public struct ModifyCcnAttachedInstancesAttributeRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String

        /// 关联网络实例列表
        public let instances: [CcnInstance]

        public init(ccnId: String, instances: [CcnInstance]) {
            self.ccnId = ccnId
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case instances = "Instances"
        }
    }

    /// ModifyCcnAttachedInstancesAttribute返回参数结构体
    public struct ModifyCcnAttachedInstancesAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改CCN关联实例属性
    ///
    /// 修改CCN关联实例属性，目前仅修改备注description
    @inlinable @discardableResult
    public func modifyCcnAttachedInstancesAttribute(_ input: ModifyCcnAttachedInstancesAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcnAttachedInstancesAttributeResponse> {
        self.client.execute(action: "ModifyCcnAttachedInstancesAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CCN关联实例属性
    ///
    /// 修改CCN关联实例属性，目前仅修改备注description
    @inlinable @discardableResult
    public func modifyCcnAttachedInstancesAttribute(_ input: ModifyCcnAttachedInstancesAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnAttachedInstancesAttributeResponse {
        try await self.client.execute(action: "ModifyCcnAttachedInstancesAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CCN关联实例属性
    ///
    /// 修改CCN关联实例属性，目前仅修改备注description
    @inlinable @discardableResult
    public func modifyCcnAttachedInstancesAttribute(ccnId: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCcnAttachedInstancesAttributeResponse> {
        self.modifyCcnAttachedInstancesAttribute(ModifyCcnAttachedInstancesAttributeRequest(ccnId: ccnId, instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CCN关联实例属性
    ///
    /// 修改CCN关联实例属性，目前仅修改备注description
    @inlinable @discardableResult
    public func modifyCcnAttachedInstancesAttribute(ccnId: String, instances: [CcnInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCcnAttachedInstancesAttributeResponse {
        try await self.modifyCcnAttachedInstancesAttribute(ModifyCcnAttachedInstancesAttributeRequest(ccnId: ccnId, instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
