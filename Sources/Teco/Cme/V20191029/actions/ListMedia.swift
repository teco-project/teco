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

extension Cme {
    /// ListMedia请求参数结构体
    public struct ListMediaRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 媒体分类路径，例如填写"/a/b"，则代表浏览该分类路径下的媒体和子分类信息。
        public let classPath: String

        /// 媒体和分类的归属者。
        public let owner: Entity

        /// 分页偏移量，默认值：0。
        public let offset: Int64?

        /// 返回记录条数，默认值：10，最大值：50。
        public let limit: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以浏览任意分类的信息。如果指定操作者，则操作者必须对分类有读权限。
        public let `operator`: String?

        public init(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.classPath = classPath
            self.owner = owner
            self.offset = offset
            self.limit = limit
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case classPath = "ClassPath"
            case owner = "Owner"
            case offset = "Offset"
            case limit = "Limit"
            case `operator` = "Operator"
        }
    }

    /// ListMedia返回参数结构体
    public struct ListMediaResponse: TCResponseModel {
        /// 符合条件的媒体记录总数。
        public let materialTotalCount: Int64

        /// 浏览分类路径下的媒体列表信息。
        public let materialInfoSet: [MaterialInfo]

        /// 浏览分类路径下的一级子类。
        public let classInfoSet: [ClassInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialTotalCount = "MaterialTotalCount"
            case materialInfoSet = "MaterialInfoSet"
            case classInfoSet = "ClassInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 浏览媒体
    ///
    ///  浏览当前分类路径下的资源，包括媒体文件和子分类，返回媒资基础信息和分类信息。
    @inlinable
    public func listMedia(_ input: ListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaResponse> {
        self.client.execute(action: "ListMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 浏览媒体
    ///
    ///  浏览当前分类路径下的资源，包括媒体文件和子分类，返回媒资基础信息和分类信息。
    @inlinable
    public func listMedia(_ input: ListMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMediaResponse {
        try await self.client.execute(action: "ListMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 浏览媒体
    ///
    ///  浏览当前分类路径下的资源，包括媒体文件和子分类，返回媒资基础信息和分类信息。
    @inlinable
    public func listMedia(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaResponse> {
        self.listMedia(ListMediaRequest(platform: platform, classPath: classPath, owner: owner, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 浏览媒体
    ///
    ///  浏览当前分类路径下的资源，包括媒体文件和子分类，返回媒资基础信息和分类信息。
    @inlinable
    public func listMedia(platform: String, classPath: String, owner: Entity, offset: Int64? = nil, limit: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMediaResponse {
        try await self.listMedia(ListMediaRequest(platform: platform, classPath: classPath, owner: owner, offset: offset, limit: limit, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
