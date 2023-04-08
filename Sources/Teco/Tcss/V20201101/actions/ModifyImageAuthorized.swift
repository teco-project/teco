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
    /// ModifyImageAuthorized请求参数结构体
    public struct ModifyImageAuthorizedRequest: TCRequestModel {
        /// 本地镜像是否全部授权的标识，优先权高于根据本地镜像ids授权。等于true时需UpdatedLocalImageCnt大于0。
        public let allLocalImages: Bool

        /// 仓库镜像是否全部授权的标识，优先权高于根据镜像ids授权。等于true时需UpdatedRegistryImageCnt大于0。
        public let allRegistryImages: Bool

        /// 指定操作授权的本地镜像数量，判断优先权最高，实际多出的镜像随机忽略，实际不足的部分也忽略。
        public let updatedLocalImageCnt: UInt64

        /// 指定操作授权的仓库镜像数量，判断优先权最高，实际多出的镜像随机忽略，实际不足的部分也忽略；
        public let updatedRegistryImageCnt: UInt64

        /// 根据满足条件的本地镜像授权,本地镜像来源；ASSETIMAGE:本地镜像列表；IMAGEALL:同步本地镜像；AllLocalImages为false且LocalImageIds为空和UpdatedLocalImageCnt大于0时，需要
        public let imageSourceType: String

        /// 根据满足条件的本地镜像授权，AllLocalImages为false且LocalImageIds为空和UpdatedLocalImageCnt大于0时，需要。
        public let localImageFilter: [AssetFilters]?

        /// 根据满足条件的仓库镜像授权，AllRegistryImages为false且RegistryImageIds为空和UpdatedRegistryImageCnt大于0时，需要。
        public let registryImageFilter: [AssetFilters]?

        /// 根据满足条件的镜像授权,同时排除的本地镜像。
        public let excludeLocalImageIds: [String]?

        /// 根据满足条件的镜像授权,同时排除的仓库镜像。
        public let excludeRegistryImageIds: [String]?

        /// 根据本地镜像ids授权，优先权高于根据满足条件的镜像授权。AllLocalImages为false且LocalImageFilter为空和UpdatedLocalImageCnt大于0时，需要。
        public let localImageIds: [String]?

        /// 根据仓库镜像Ids授权，优先权高于根据满足条件的镜像授。AllRegistryImages为false且RegistryImageFilter为空和UpdatedRegistryImageCnt大于0时，需要。
        public let registryImageIds: [String]?

        /// 是否仅最新的镜像；RegistryImageFilter不为空且UpdatedRegistryImageCnt大于0时仓库镜像需要。
        public let onlyShowLatest: Bool?

        public init(allLocalImages: Bool, allRegistryImages: Bool, updatedLocalImageCnt: UInt64, updatedRegistryImageCnt: UInt64, imageSourceType: String, localImageFilter: [AssetFilters]? = nil, registryImageFilter: [AssetFilters]? = nil, excludeLocalImageIds: [String]? = nil, excludeRegistryImageIds: [String]? = nil, localImageIds: [String]? = nil, registryImageIds: [String]? = nil, onlyShowLatest: Bool? = nil) {
            self.allLocalImages = allLocalImages
            self.allRegistryImages = allRegistryImages
            self.updatedLocalImageCnt = updatedLocalImageCnt
            self.updatedRegistryImageCnt = updatedRegistryImageCnt
            self.imageSourceType = imageSourceType
            self.localImageFilter = localImageFilter
            self.registryImageFilter = registryImageFilter
            self.excludeLocalImageIds = excludeLocalImageIds
            self.excludeRegistryImageIds = excludeRegistryImageIds
            self.localImageIds = localImageIds
            self.registryImageIds = registryImageIds
            self.onlyShowLatest = onlyShowLatest
        }

        enum CodingKeys: String, CodingKey {
            case allLocalImages = "AllLocalImages"
            case allRegistryImages = "AllRegistryImages"
            case updatedLocalImageCnt = "UpdatedLocalImageCnt"
            case updatedRegistryImageCnt = "UpdatedRegistryImageCnt"
            case imageSourceType = "ImageSourceType"
            case localImageFilter = "LocalImageFilter"
            case registryImageFilter = "RegistryImageFilter"
            case excludeLocalImageIds = "ExcludeLocalImageIds"
            case excludeRegistryImageIds = "ExcludeRegistryImageIds"
            case localImageIds = "LocalImageIds"
            case registryImageIds = "RegistryImageIds"
            case onlyShowLatest = "OnlyShowLatest"
        }
    }

    /// ModifyImageAuthorized返回参数结构体
    public struct ModifyImageAuthorizedResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量授权镜像扫描V2.0
    @inlinable @discardableResult
    public func modifyImageAuthorized(_ input: ModifyImageAuthorizedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageAuthorizedResponse> {
        self.client.execute(action: "ModifyImageAuthorized", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量授权镜像扫描V2.0
    @inlinable @discardableResult
    public func modifyImageAuthorized(_ input: ModifyImageAuthorizedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageAuthorizedResponse {
        try await self.client.execute(action: "ModifyImageAuthorized", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量授权镜像扫描V2.0
    @inlinable @discardableResult
    public func modifyImageAuthorized(allLocalImages: Bool, allRegistryImages: Bool, updatedLocalImageCnt: UInt64, updatedRegistryImageCnt: UInt64, imageSourceType: String, localImageFilter: [AssetFilters]? = nil, registryImageFilter: [AssetFilters]? = nil, excludeLocalImageIds: [String]? = nil, excludeRegistryImageIds: [String]? = nil, localImageIds: [String]? = nil, registryImageIds: [String]? = nil, onlyShowLatest: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageAuthorizedResponse> {
        self.modifyImageAuthorized(.init(allLocalImages: allLocalImages, allRegistryImages: allRegistryImages, updatedLocalImageCnt: updatedLocalImageCnt, updatedRegistryImageCnt: updatedRegistryImageCnt, imageSourceType: imageSourceType, localImageFilter: localImageFilter, registryImageFilter: registryImageFilter, excludeLocalImageIds: excludeLocalImageIds, excludeRegistryImageIds: excludeRegistryImageIds, localImageIds: localImageIds, registryImageIds: registryImageIds, onlyShowLatest: onlyShowLatest), region: region, logger: logger, on: eventLoop)
    }

    /// 批量授权镜像扫描V2.0
    @inlinable @discardableResult
    public func modifyImageAuthorized(allLocalImages: Bool, allRegistryImages: Bool, updatedLocalImageCnt: UInt64, updatedRegistryImageCnt: UInt64, imageSourceType: String, localImageFilter: [AssetFilters]? = nil, registryImageFilter: [AssetFilters]? = nil, excludeLocalImageIds: [String]? = nil, excludeRegistryImageIds: [String]? = nil, localImageIds: [String]? = nil, registryImageIds: [String]? = nil, onlyShowLatest: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageAuthorizedResponse {
        try await self.modifyImageAuthorized(.init(allLocalImages: allLocalImages, allRegistryImages: allRegistryImages, updatedLocalImageCnt: updatedLocalImageCnt, updatedRegistryImageCnt: updatedRegistryImageCnt, imageSourceType: imageSourceType, localImageFilter: localImageFilter, registryImageFilter: registryImageFilter, excludeLocalImageIds: excludeLocalImageIds, excludeRegistryImageIds: excludeRegistryImageIds, localImageIds: localImageIds, registryImageIds: registryImageIds, onlyShowLatest: onlyShowLatest), region: region, logger: logger, on: eventLoop)
    }
}
