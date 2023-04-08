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

extension Rum {
    /// ModifyProjectLimit请求参数结构体
    public struct ModifyProjectLimitRequest: TCRequestModel {
        /// 项目ID
        public let projectID: Int64

        /// 项目接口
        public let projectInterface: String?

        /// 上报比例   10代表10%
        public let reportRate: Int64?

        /// 上报类型 1：比例  2：上报量
        public let reportType: Int64?

        /// 主键ID
        public let id: Int64?

        public init(projectID: Int64, projectInterface: String? = nil, reportRate: Int64? = nil, reportType: Int64? = nil, id: Int64? = nil) {
            self.projectID = projectID
            self.projectInterface = projectInterface
            self.reportRate = reportRate
            self.reportType = reportType
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case projectID = "ProjectID"
            case projectInterface = "ProjectInterface"
            case reportRate = "ReportRate"
            case reportType = "ReportType"
            case id = "ID"
        }
    }

    /// ModifyProjectLimit返回参数结构体
    public struct ModifyProjectLimitResponse: TCResponseModel {
        /// 返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 新增修改限流
    @inlinable
    public func modifyProjectLimit(_ input: ModifyProjectLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectLimitResponse> {
        self.client.execute(action: "ModifyProjectLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增修改限流
    @inlinable
    public func modifyProjectLimit(_ input: ModifyProjectLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectLimitResponse {
        try await self.client.execute(action: "ModifyProjectLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增修改限流
    @inlinable
    public func modifyProjectLimit(projectID: Int64, projectInterface: String? = nil, reportRate: Int64? = nil, reportType: Int64? = nil, id: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectLimitResponse> {
        self.modifyProjectLimit(.init(projectID: projectID, projectInterface: projectInterface, reportRate: reportRate, reportType: reportType, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 新增修改限流
    @inlinable
    public func modifyProjectLimit(projectID: Int64, projectInterface: String? = nil, reportRate: Int64? = nil, reportType: Int64? = nil, id: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectLimitResponse {
        try await self.modifyProjectLimit(.init(projectID: projectID, projectInterface: projectInterface, reportRate: reportRate, reportType: reportType, id: id), region: region, logger: logger, on: eventLoop)
    }
}
