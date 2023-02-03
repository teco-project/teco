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

extension Pts {
    /// UpdateFileScenarioRelation请求参数结构体
    public struct UpdateFileScenarioRelationRequest: TCRequestModel {
        /// 文件 ID
        public let fileId: String

        /// 项目 ID
        public let projectId: String

        /// 场景 ID 数组
        public let scenarioIds: [String]?

        public init(fileId: String, projectId: String, scenarioIds: [String]? = nil) {
            self.fileId = fileId
            self.projectId = projectId
            self.scenarioIds = scenarioIds
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case projectId = "ProjectId"
            case scenarioIds = "ScenarioIds"
        }
    }

    /// UpdateFileScenarioRelation返回参数结构体
    public struct UpdateFileScenarioRelationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新关联文件场景
    @inlinable @discardableResult
    public func updateFileScenarioRelation(_ input: UpdateFileScenarioRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFileScenarioRelationResponse> {
        self.client.execute(action: "UpdateFileScenarioRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新关联文件场景
    @inlinable @discardableResult
    public func updateFileScenarioRelation(_ input: UpdateFileScenarioRelationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFileScenarioRelationResponse {
        try await self.client.execute(action: "UpdateFileScenarioRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新关联文件场景
    @inlinable @discardableResult
    public func updateFileScenarioRelation(fileId: String, projectId: String, scenarioIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFileScenarioRelationResponse> {
        let input = UpdateFileScenarioRelationRequest(fileId: fileId, projectId: projectId, scenarioIds: scenarioIds)
        return self.client.execute(action: "UpdateFileScenarioRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新关联文件场景
    @inlinable @discardableResult
    public func updateFileScenarioRelation(fileId: String, projectId: String, scenarioIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFileScenarioRelationResponse {
        let input = UpdateFileScenarioRelationRequest(fileId: fileId, projectId: projectId, scenarioIds: scenarioIds)
        return try await self.client.execute(action: "UpdateFileScenarioRelation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
