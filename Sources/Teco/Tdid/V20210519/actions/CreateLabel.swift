//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdid {
    /// CreateLabel请求参数结构体
    public struct CreateLabelRequest: TCRequestModel {
        /// 标签名称
        public let labelName: String

        /// 网络Id
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        public init(labelName: String, clusterId: String, groupId: UInt64) {
            self.labelName = labelName
            self.clusterId = clusterId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case labelName = "LabelName"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
        }
    }

    /// CreateLabel返回参数结构体
    public struct CreateLabelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新建标签
    @inlinable @discardableResult
    public func createLabel(_ input: CreateLabelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLabelResponse> {
        self.client.execute(action: "CreateLabel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建标签
    @inlinable @discardableResult
    public func createLabel(_ input: CreateLabelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLabelResponse {
        try await self.client.execute(action: "CreateLabel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建标签
    @inlinable @discardableResult
    public func createLabel(labelName: String, clusterId: String, groupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLabelResponse> {
        self.createLabel(CreateLabelRequest(labelName: labelName, clusterId: clusterId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建标签
    @inlinable @discardableResult
    public func createLabel(labelName: String, clusterId: String, groupId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLabelResponse {
        try await self.createLabel(CreateLabelRequest(labelName: labelName, clusterId: clusterId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
