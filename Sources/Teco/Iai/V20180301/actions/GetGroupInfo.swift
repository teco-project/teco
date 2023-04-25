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

extension Iai {
    /// GetGroupInfo请求参数结构体
    public struct GetGroupInfoRequest: TCRequestModel {
        /// 人员库 ID。
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// GetGroupInfo返回参数结构体
    public struct GetGroupInfoResponse: TCResponseModel {
        /// 人员库名称
        public let groupName: String

        /// 人员库ID
        public let groupId: String

        /// 人员库自定义描述字段
        public let groupExDescriptions: [String]

        /// 人员库信息备注
        public let tag: String

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// Group的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        public let creationTimestamp: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupId = "GroupId"
            case groupExDescriptions = "GroupExDescriptions"
            case tag = "Tag"
            case faceModelVersion = "FaceModelVersion"
            case creationTimestamp = "CreationTimestamp"
            case requestId = "RequestId"
        }
    }

    /// 获取人员库信息
    ///
    /// 获取人员库信息。
    @inlinable
    public func getGroupInfo(_ input: GetGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupInfoResponse> {
        self.client.execute(action: "GetGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员库信息
    ///
    /// 获取人员库信息。
    @inlinable
    public func getGroupInfo(_ input: GetGroupInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupInfoResponse {
        try await self.client.execute(action: "GetGroupInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员库信息
    ///
    /// 获取人员库信息。
    @inlinable
    public func getGroupInfo(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupInfoResponse> {
        self.getGroupInfo(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员库信息
    ///
    /// 获取人员库信息。
    @inlinable
    public func getGroupInfo(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupInfoResponse {
        try await self.getGroupInfo(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
