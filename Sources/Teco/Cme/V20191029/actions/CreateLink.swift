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
    /// CreateLink请求参数结构体
    public struct CreateLinkRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 链接类型，可取值有:
        /// <li>CLASS: 分类链接；</li>
        /// <li> MATERIAL：媒体文件链接。</li>
        public let type: String

        /// 链接名称，不能超过30个字符。
        public let name: String

        /// 链接归属者。
        public let owner: Entity

        /// 目标资源Id。可取值有：
        /// <li>当 Type 为 MATERIAL 时填媒体 ID；</li>
        /// <li>当 Type 为 CLASS 时填写分类路径。</li>
        public let destinationId: String

        /// 目标资源归属者。
        public let destinationOwner: Entity

        /// 链接的分类路径，如填"/a/b"则代表链接属于该分类路径，不填则默认为根路径。
        public let classPath: String?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以创建任意源及目标资源的链接。如果指定操作者，则操作者必须对源资源有读权限，对目标媒体有写权限。
        public let `operator`: String?

        public init(platform: String, type: String, name: String, owner: Entity, destinationId: String, destinationOwner: Entity, classPath: String? = nil, operator: String? = nil) {
            self.platform = platform
            self.type = type
            self.name = name
            self.owner = owner
            self.destinationId = destinationId
            self.destinationOwner = destinationOwner
            self.classPath = classPath
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case type = "Type"
            case name = "Name"
            case owner = "Owner"
            case destinationId = "DestinationId"
            case destinationOwner = "DestinationOwner"
            case classPath = "ClassPath"
            case `operator` = "Operator"
        }
    }

    /// CreateLink返回参数结构体
    public struct CreateLinkResponse: TCResponseModel {
        /// 新建链接的媒体 Id。
        public let materialId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialId = "MaterialId"
            case requestId = "RequestId"
        }
    }

    /// 创建链接
    ///
    /// 创建媒体链接或分类路径链接，将源资源信息链接到目标。
    @inlinable
    public func createLink(_ input: CreateLinkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLinkResponse> {
        self.client.execute(action: "CreateLink", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建链接
    ///
    /// 创建媒体链接或分类路径链接，将源资源信息链接到目标。
    @inlinable
    public func createLink(_ input: CreateLinkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLinkResponse {
        try await self.client.execute(action: "CreateLink", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建链接
    ///
    /// 创建媒体链接或分类路径链接，将源资源信息链接到目标。
    @inlinable
    public func createLink(platform: String, type: String, name: String, owner: Entity, destinationId: String, destinationOwner: Entity, classPath: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLinkResponse> {
        self.createLink(.init(platform: platform, type: type, name: name, owner: owner, destinationId: destinationId, destinationOwner: destinationOwner, classPath: classPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 创建链接
    ///
    /// 创建媒体链接或分类路径链接，将源资源信息链接到目标。
    @inlinable
    public func createLink(platform: String, type: String, name: String, owner: Entity, destinationId: String, destinationOwner: Entity, classPath: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLinkResponse {
        try await self.createLink(.init(platform: platform, type: type, name: name, owner: owner, destinationId: destinationId, destinationOwner: destinationOwner, classPath: classPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
