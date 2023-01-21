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

extension Cdb {
    /// ModifyInstanceTag请求参数结构体
    public struct ModifyInstanceTagRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 要增加或修改的标签。
        public let replaceTags: [TagInfo]?

        /// 要删除的标签。
        public let deleteTags: [TagInfo]?

        public init(instanceId: String, replaceTags: [TagInfo]? = nil, deleteTags: [TagInfo]? = nil) {
            self.instanceId = instanceId
            self.replaceTags = replaceTags
            self.deleteTags = deleteTags
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case replaceTags = "ReplaceTags"
            case deleteTags = "DeleteTags"
        }
    }

    /// ModifyInstanceTag返回参数结构体
    public struct ModifyInstanceTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例标签
    ///
    /// 本接口(ModifyInstanceTag)用于对实例标签进行添加、修改或者删除。
    @inlinable @discardableResult
    public func modifyInstanceTag(_ input: ModifyInstanceTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceTagResponse> {
        self.client.execute(action: "ModifyInstanceTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例标签
    ///
    /// 本接口(ModifyInstanceTag)用于对实例标签进行添加、修改或者删除。
    @inlinable @discardableResult
    public func modifyInstanceTag(_ input: ModifyInstanceTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceTagResponse {
        try await self.client.execute(action: "ModifyInstanceTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例标签
    ///
    /// 本接口(ModifyInstanceTag)用于对实例标签进行添加、修改或者删除。
    @inlinable @discardableResult
    public func modifyInstanceTag(instanceId: String, replaceTags: [TagInfo]? = nil, deleteTags: [TagInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceTagResponse> {
        self.modifyInstanceTag(ModifyInstanceTagRequest(instanceId: instanceId, replaceTags: replaceTags, deleteTags: deleteTags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例标签
    ///
    /// 本接口(ModifyInstanceTag)用于对实例标签进行添加、修改或者删除。
    @inlinable @discardableResult
    public func modifyInstanceTag(instanceId: String, replaceTags: [TagInfo]? = nil, deleteTags: [TagInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceTagResponse {
        try await self.modifyInstanceTag(ModifyInstanceTagRequest(instanceId: instanceId, replaceTags: replaceTags, deleteTags: deleteTags), region: region, logger: logger, on: eventLoop)
    }
}
