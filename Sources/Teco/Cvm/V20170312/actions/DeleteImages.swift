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

extension Cvm {
    /// DeleteImages请求参数结构体
    public struct DeleteImagesRequest: TCRequestModel {
        /// 准备删除的镜像Id列表
        public let imageIds: [String]

        /// 是否删除镜像关联的快照
        public let deleteBindedSnap: Bool?

        /// 检测是否支持删除镜像
        public let dryRun: Bool?

        public init(imageIds: [String], deleteBindedSnap: Bool? = nil, dryRun: Bool? = nil) {
            self.imageIds = imageIds
            self.deleteBindedSnap = deleteBindedSnap
            self.dryRun = dryRun
        }

        enum CodingKeys: String, CodingKey {
            case imageIds = "ImageIds"
            case deleteBindedSnap = "DeleteBindedSnap"
            case dryRun = "DryRun"
        }
    }

    /// DeleteImages返回参数结构体
    public struct DeleteImagesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除镜像
    ///
    /// 本接口（DeleteImages）用于删除一个或多个镜像。
    ///
    /// * 当[镜像状态](https://cloud.tencent.com/document/product/213/15753#Image)为`创建中`和`使用中`时, 不允许删除。镜像状态可以通过[DescribeImages](https://cloud.tencent.com/document/api/213/9418)获取。
    /// * 每个地域最多只支持创建10个自定义镜像，删除镜像可以释放账户的配额。
    /// * 当镜像正在被其它账户分享时，不允许删除。
    @inlinable @discardableResult
    public func deleteImages(_ input: DeleteImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImagesResponse> {
        self.client.execute(action: "DeleteImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    ///
    /// 本接口（DeleteImages）用于删除一个或多个镜像。
    ///
    /// * 当[镜像状态](https://cloud.tencent.com/document/product/213/15753#Image)为`创建中`和`使用中`时, 不允许删除。镜像状态可以通过[DescribeImages](https://cloud.tencent.com/document/api/213/9418)获取。
    /// * 每个地域最多只支持创建10个自定义镜像，删除镜像可以释放账户的配额。
    /// * 当镜像正在被其它账户分享时，不允许删除。
    @inlinable @discardableResult
    public func deleteImages(_ input: DeleteImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImagesResponse {
        try await self.client.execute(action: "DeleteImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除镜像
    ///
    /// 本接口（DeleteImages）用于删除一个或多个镜像。
    ///
    /// * 当[镜像状态](https://cloud.tencent.com/document/product/213/15753#Image)为`创建中`和`使用中`时, 不允许删除。镜像状态可以通过[DescribeImages](https://cloud.tencent.com/document/api/213/9418)获取。
    /// * 每个地域最多只支持创建10个自定义镜像，删除镜像可以释放账户的配额。
    /// * 当镜像正在被其它账户分享时，不允许删除。
    @inlinable @discardableResult
    public func deleteImages(imageIds: [String], deleteBindedSnap: Bool? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImagesResponse> {
        self.deleteImages(.init(imageIds: imageIds, deleteBindedSnap: deleteBindedSnap, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    ///
    /// 本接口（DeleteImages）用于删除一个或多个镜像。
    ///
    /// * 当[镜像状态](https://cloud.tencent.com/document/product/213/15753#Image)为`创建中`和`使用中`时, 不允许删除。镜像状态可以通过[DescribeImages](https://cloud.tencent.com/document/api/213/9418)获取。
    /// * 每个地域最多只支持创建10个自定义镜像，删除镜像可以释放账户的配额。
    /// * 当镜像正在被其它账户分享时，不允许删除。
    @inlinable @discardableResult
    public func deleteImages(imageIds: [String], deleteBindedSnap: Bool? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImagesResponse {
        try await self.deleteImages(.init(imageIds: imageIds, deleteBindedSnap: deleteBindedSnap, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }
}
