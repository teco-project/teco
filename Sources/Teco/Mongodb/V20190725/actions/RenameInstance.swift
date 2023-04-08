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

extension Mongodb {
    /// RenameInstance请求参数结构体
    public struct RenameInstanceRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        /// 自定义实例名称，名称只支持长度为60个字符的中文、英文、数字、下划线_、分隔符 -
        public let newName: String

        public init(instanceId: String, newName: String) {
            self.instanceId = instanceId
            self.newName = newName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case newName = "NewName"
        }
    }

    /// RenameInstance返回参数结构体
    public struct RenameInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例名称
    ///
    /// 本接口(RenameInstance)用于修改云数据库实例的名称。
    @inlinable @discardableResult
    public func renameInstance(_ input: RenameInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenameInstanceResponse> {
        self.client.execute(action: "RenameInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例名称
    ///
    /// 本接口(RenameInstance)用于修改云数据库实例的名称。
    @inlinable @discardableResult
    public func renameInstance(_ input: RenameInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenameInstanceResponse {
        try await self.client.execute(action: "RenameInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例名称
    ///
    /// 本接口(RenameInstance)用于修改云数据库实例的名称。
    @inlinable @discardableResult
    public func renameInstance(instanceId: String, newName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenameInstanceResponse> {
        self.renameInstance(.init(instanceId: instanceId, newName: newName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例名称
    ///
    /// 本接口(RenameInstance)用于修改云数据库实例的名称。
    @inlinable @discardableResult
    public func renameInstance(instanceId: String, newName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenameInstanceResponse {
        try await self.renameInstance(.init(instanceId: instanceId, newName: newName), region: region, logger: logger, on: eventLoop)
    }
}
