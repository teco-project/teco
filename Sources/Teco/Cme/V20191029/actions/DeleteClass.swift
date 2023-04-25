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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cme {
    /// DeleteClass请求参数结构体
    public struct DeleteClassRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 归属者。
        public let owner: Entity

        /// 分类路径。
        public let classPath: String

        /// 操作者。填写用户的 Id，用于标识调用者及校验操作权限。
        public let `operator`: String?

        public init(platform: String, owner: Entity, classPath: String, operator: String? = nil) {
            self.platform = platform
            self.owner = owner
            self.classPath = classPath
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case owner = "Owner"
            case classPath = "ClassPath"
            case `operator` = "Operator"
        }
    }

    /// DeleteClass返回参数结构体
    public struct DeleteClassResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除分类
    ///
    /// 删除分类信息，删除时检验下述限制：
    /// <li>分类路径必须存在；</li>
    /// <li>分类下没有绑定素材。</li>
    @inlinable @discardableResult
    public func deleteClass(_ input: DeleteClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClassResponse> {
        self.client.execute(action: "DeleteClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除分类
    ///
    /// 删除分类信息，删除时检验下述限制：
    /// <li>分类路径必须存在；</li>
    /// <li>分类下没有绑定素材。</li>
    @inlinable @discardableResult
    public func deleteClass(_ input: DeleteClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClassResponse {
        try await self.client.execute(action: "DeleteClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除分类
    ///
    /// 删除分类信息，删除时检验下述限制：
    /// <li>分类路径必须存在；</li>
    /// <li>分类下没有绑定素材。</li>
    @inlinable @discardableResult
    public func deleteClass(platform: String, owner: Entity, classPath: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClassResponse> {
        self.deleteClass(.init(platform: platform, owner: owner, classPath: classPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除分类
    ///
    /// 删除分类信息，删除时检验下述限制：
    /// <li>分类路径必须存在；</li>
    /// <li>分类下没有绑定素材。</li>
    @inlinable @discardableResult
    public func deleteClass(platform: String, owner: Entity, classPath: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClassResponse {
        try await self.deleteClass(.init(platform: platform, owner: owner, classPath: classPath, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
