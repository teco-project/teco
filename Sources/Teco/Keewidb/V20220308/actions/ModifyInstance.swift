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

extension Keewidb {
    /// ModifyInstance请求参数结构体
    public struct ModifyInstanceRequest: TCRequestModel {
        /// 修改实例操作。<ul><li>rename：表示实例重命名。</li><li>modifyProject：修改实例所属项目。</li><li>modifyAutoRenew：修改实例续费模式。</li></ul>
        public let operation: String

        /// 实例 ID 数组。
        public let instanceIds: [String]?

        /// 实例的新名称。
        public let instanceNames: [String]?

        /// 实例新的项目 ID。
        public let projectId: Int64?

        /// 包年包月计费的续费模式。<b>InstanceIds</b>数组和<b>AutoRenews</b>数组中的修改值对应。<ul><li>0：默认状态，指手动续费。</li><li>1：自动续费。</li><li>2：到期不再续费。</ul>
        public let autoRenews: [Int64]?

        public init(operation: String, instanceIds: [String]? = nil, instanceNames: [String]? = nil, projectId: Int64? = nil, autoRenews: [Int64]? = nil) {
            self.operation = operation
            self.instanceIds = instanceIds
            self.instanceNames = instanceNames
            self.projectId = projectId
            self.autoRenews = autoRenews
        }

        enum CodingKeys: String, CodingKey {
            case operation = "Operation"
            case instanceIds = "InstanceIds"
            case instanceNames = "InstanceNames"
            case projectId = "ProjectId"
            case autoRenews = "AutoRenews"
        }
    }

    /// ModifyInstance返回参数结构体
    public struct ModifyInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例相关信息
    ///
    /// 本接口（ModifyInstance）用于修改实例相关信息。
    @inlinable @discardableResult
    public func modifyInstance(_ input: ModifyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceResponse> {
        self.client.execute(action: "ModifyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例相关信息
    ///
    /// 本接口（ModifyInstance）用于修改实例相关信息。
    @inlinable @discardableResult
    public func modifyInstance(_ input: ModifyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceResponse {
        try await self.client.execute(action: "ModifyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例相关信息
    ///
    /// 本接口（ModifyInstance）用于修改实例相关信息。
    @inlinable @discardableResult
    public func modifyInstance(operation: String, instanceIds: [String]? = nil, instanceNames: [String]? = nil, projectId: Int64? = nil, autoRenews: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceResponse> {
        self.modifyInstance(.init(operation: operation, instanceIds: instanceIds, instanceNames: instanceNames, projectId: projectId, autoRenews: autoRenews), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例相关信息
    ///
    /// 本接口（ModifyInstance）用于修改实例相关信息。
    @inlinable @discardableResult
    public func modifyInstance(operation: String, instanceIds: [String]? = nil, instanceNames: [String]? = nil, projectId: Int64? = nil, autoRenews: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceResponse {
        try await self.modifyInstance(.init(operation: operation, instanceIds: instanceIds, instanceNames: instanceNames, projectId: projectId, autoRenews: autoRenews), region: region, logger: logger, on: eventLoop)
    }
}
