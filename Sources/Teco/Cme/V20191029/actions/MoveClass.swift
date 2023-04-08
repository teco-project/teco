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

extension Cme {
    /// MoveClass请求参数结构体
    public struct MoveClassRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 归属者。
        public let owner: Entity

        /// 源分类路径。
        public let sourceClassPath: String

        /// 目标分类路径。
        public let destinationClassPath: String

        /// 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        public let `operator`: String?

        public init(platform: String, owner: Entity, sourceClassPath: String, destinationClassPath: String, operator: String? = nil) {
            self.platform = platform
            self.owner = owner
            self.sourceClassPath = sourceClassPath
            self.destinationClassPath = destinationClassPath
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case owner = "Owner"
            case sourceClassPath = "SourceClassPath"
            case destinationClassPath = "DestinationClassPath"
            case `operator` = "Operator"
        }
    }

    /// MoveClass返回参数结构体
    public struct MoveClassResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 移动分类
    ///
    /// 移动某一个分类到另外一个分类下，也可用于分类重命名。
    /// 如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球
    /// <li>当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath；</li>
    /// <li>当 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable @discardableResult
    public func moveClass(_ input: MoveClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MoveClassResponse> {
        self.client.execute(action: "MoveClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 移动分类
    ///
    /// 移动某一个分类到另外一个分类下，也可用于分类重命名。
    /// 如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球
    /// <li>当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath；</li>
    /// <li>当 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable @discardableResult
    public func moveClass(_ input: MoveClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MoveClassResponse {
        try await self.client.execute(action: "MoveClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 移动分类
    ///
    /// 移动某一个分类到另外一个分类下，也可用于分类重命名。
    /// 如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球
    /// <li>当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath；</li>
    /// <li>当 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable @discardableResult
    public func moveClass(platform: String, owner: Entity, sourceClassPath: String, destinationClassPath: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MoveClassResponse> {
        self.moveClass(.init(platform: platform, owner: owner, sourceClassPath: sourceClassPath, destinationClassPath: destinationClassPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 移动分类
    ///
    /// 移动某一个分类到另外一个分类下，也可用于分类重命名。
    /// 如果 SourceClassPath = /素材/视频/NBA，DestinationClassPath = /素材/视频/篮球
    /// <li>当 DestinationClassPath 不存在时候，操作结果为重命名 ClassPath；</li>
    /// <li>当 DestinationClassPath 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable @discardableResult
    public func moveClass(platform: String, owner: Entity, sourceClassPath: String, destinationClassPath: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MoveClassResponse {
        try await self.moveClass(.init(platform: platform, owner: owner, sourceClassPath: sourceClassPath, destinationClassPath: destinationClassPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
