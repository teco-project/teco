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

extension Tiems {
    /// DeleteResourceGroup请求参数结构体
    public struct DeleteResourceGroupRequest: TCRequestModel {
        /// 要删除的资源组 ID
        public let resourceGroupId: String

        public init(resourceGroupId: String) {
            self.resourceGroupId = resourceGroupId
        }

        enum CodingKeys: String, CodingKey {
            case resourceGroupId = "ResourceGroupId"
        }
    }

    /// DeleteResourceGroup返回参数结构体
    public struct DeleteResourceGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除资源组
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组
    @inlinable @discardableResult
    public func deleteResourceGroup(_ input: DeleteResourceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceGroupResponse> {
        self.client.execute(action: "DeleteResourceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除资源组
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组
    @inlinable @discardableResult
    public func deleteResourceGroup(_ input: DeleteResourceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceGroupResponse {
        try await self.client.execute(action: "DeleteResourceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除资源组
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组
    @inlinable @discardableResult
    public func deleteResourceGroup(resourceGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceGroupResponse> {
        self.deleteResourceGroup(DeleteResourceGroupRequest(resourceGroupId: resourceGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除资源组
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组
    @inlinable @discardableResult
    public func deleteResourceGroup(resourceGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceGroupResponse {
        try await self.deleteResourceGroup(DeleteResourceGroupRequest(resourceGroupId: resourceGroupId), region: region, logger: logger, on: eventLoop)
    }
}
