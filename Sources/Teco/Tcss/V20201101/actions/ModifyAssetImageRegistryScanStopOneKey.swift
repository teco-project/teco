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

extension Tcss {
    /// ModifyAssetImageRegistryScanStopOneKey请求参数结构体
    public struct ModifyAssetImageRegistryScanStopOneKeyRequest: TCRequestModel {
        /// 是否扫描全部镜像
        public let all: Bool?

        /// 扫描的镜像列表
        public let images: [ImageInfo]?

        /// 扫描的镜像列表Id
        public let id: [UInt64]?

        public init(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil) {
            self.all = all
            self.images = images
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case all = "All"
            case images = "Images"
            case id = "Id"
        }
    }

    /// ModifyAssetImageRegistryScanStopOneKey返回参数结构体
    public struct ModifyAssetImageRegistryScanStopOneKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库停止镜像一键扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStopOneKey(_ input: ModifyAssetImageRegistryScanStopOneKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetImageRegistryScanStopOneKeyResponse> {
        self.client.execute(action: "ModifyAssetImageRegistryScanStopOneKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库停止镜像一键扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStopOneKey(_ input: ModifyAssetImageRegistryScanStopOneKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetImageRegistryScanStopOneKeyResponse {
        try await self.client.execute(action: "ModifyAssetImageRegistryScanStopOneKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库停止镜像一键扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStopOneKey(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAssetImageRegistryScanStopOneKeyResponse> {
        self.modifyAssetImageRegistryScanStopOneKey(ModifyAssetImageRegistryScanStopOneKeyRequest(all: all, images: images, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库停止镜像一键扫描任务
    @inlinable @discardableResult
    public func modifyAssetImageRegistryScanStopOneKey(all: Bool? = nil, images: [ImageInfo]? = nil, id: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetImageRegistryScanStopOneKeyResponse {
        try await self.modifyAssetImageRegistryScanStopOneKey(ModifyAssetImageRegistryScanStopOneKeyRequest(all: all, images: images, id: id), region: region, logger: logger, on: eventLoop)
    }
}
