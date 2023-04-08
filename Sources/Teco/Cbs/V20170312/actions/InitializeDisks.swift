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

import Logging
import NIOCore
import TecoCore

extension Cbs {
    /// InitializeDisks请求参数结构体
    public struct InitializeDisksRequest: TCRequestModel {
        /// 待重新初始化的云硬盘ID列表， 单次初始化限制20块以内
        public let diskIds: [String]

        public init(diskIds: [String]) {
            self.diskIds = diskIds
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
        }
    }

    /// InitializeDisks返回参数结构体
    public struct InitializeDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重新初始化云硬盘
    ///
    /// 重新初始化云硬盘至云硬盘初始创建时的状态。使用云硬盘的重新初始化功能时需要注意以下4点：
    /// 1. 如果云硬盘是由快照创建的，则重新初始化会通过此快照重新回滚此云硬盘，即将云硬盘恢复为与快照一致的状态；
    /// 2. 如果云硬盘不是通过快照创建的，则重新初始化会清空此云硬盘的数据；请在重新初始化云硬盘前检查并备份必要的数据；
    /// 3. 当前仅未挂载的、非共享属性的数据盘云硬盘支持重新初始化；
    /// 4. 当创建此云硬盘的原始快照被删除时，不再支持重新初始化此云硬盘。
    @inlinable @discardableResult
    public func initializeDisks(_ input: InitializeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitializeDisksResponse> {
        self.client.execute(action: "InitializeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新初始化云硬盘
    ///
    /// 重新初始化云硬盘至云硬盘初始创建时的状态。使用云硬盘的重新初始化功能时需要注意以下4点：
    /// 1. 如果云硬盘是由快照创建的，则重新初始化会通过此快照重新回滚此云硬盘，即将云硬盘恢复为与快照一致的状态；
    /// 2. 如果云硬盘不是通过快照创建的，则重新初始化会清空此云硬盘的数据；请在重新初始化云硬盘前检查并备份必要的数据；
    /// 3. 当前仅未挂载的、非共享属性的数据盘云硬盘支持重新初始化；
    /// 4. 当创建此云硬盘的原始快照被删除时，不再支持重新初始化此云硬盘。
    @inlinable @discardableResult
    public func initializeDisks(_ input: InitializeDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeDisksResponse {
        try await self.client.execute(action: "InitializeDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新初始化云硬盘
    ///
    /// 重新初始化云硬盘至云硬盘初始创建时的状态。使用云硬盘的重新初始化功能时需要注意以下4点：
    /// 1. 如果云硬盘是由快照创建的，则重新初始化会通过此快照重新回滚此云硬盘，即将云硬盘恢复为与快照一致的状态；
    /// 2. 如果云硬盘不是通过快照创建的，则重新初始化会清空此云硬盘的数据；请在重新初始化云硬盘前检查并备份必要的数据；
    /// 3. 当前仅未挂载的、非共享属性的数据盘云硬盘支持重新初始化；
    /// 4. 当创建此云硬盘的原始快照被删除时，不再支持重新初始化此云硬盘。
    @inlinable @discardableResult
    public func initializeDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitializeDisksResponse> {
        self.initializeDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 重新初始化云硬盘
    ///
    /// 重新初始化云硬盘至云硬盘初始创建时的状态。使用云硬盘的重新初始化功能时需要注意以下4点：
    /// 1. 如果云硬盘是由快照创建的，则重新初始化会通过此快照重新回滚此云硬盘，即将云硬盘恢复为与快照一致的状态；
    /// 2. 如果云硬盘不是通过快照创建的，则重新初始化会清空此云硬盘的数据；请在重新初始化云硬盘前检查并备份必要的数据；
    /// 3. 当前仅未挂载的、非共享属性的数据盘云硬盘支持重新初始化；
    /// 4. 当创建此云硬盘的原始快照被删除时，不再支持重新初始化此云硬盘。
    @inlinable @discardableResult
    public func initializeDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeDisksResponse {
        try await self.initializeDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
