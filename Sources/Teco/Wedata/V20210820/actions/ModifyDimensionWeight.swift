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

extension Wedata {
    /// ModifyDimensionWeight请求参数结构体
    public struct ModifyDimensionWeightRequest: TCRequestModel {
        /// 权重信息列表
        public let weightInfoList: [WeightInfo]

        /// 项目id
        public let projectId: String

        /// 是否重刷历史数据
        public let refresh: Bool

        public init(weightInfoList: [WeightInfo], projectId: String, refresh: Bool) {
            self.weightInfoList = weightInfoList
            self.projectId = projectId
            self.refresh = refresh
        }

        enum CodingKeys: String, CodingKey {
            case weightInfoList = "WeightInfoList"
            case projectId = "ProjectId"
            case refresh = "Refresh"
        }
    }

    /// ModifyDimensionWeight返回参数结构体
    public struct ModifyDimensionWeightResponse: TCResponseModel {
        /// 更新权重是否成功
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改维度权重
    ///
    /// 质量报告-修改维度权限
    @inlinable
    public func modifyDimensionWeight(_ input: ModifyDimensionWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDimensionWeightResponse> {
        self.client.execute(action: "ModifyDimensionWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改维度权重
    ///
    /// 质量报告-修改维度权限
    @inlinable
    public func modifyDimensionWeight(_ input: ModifyDimensionWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDimensionWeightResponse {
        try await self.client.execute(action: "ModifyDimensionWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改维度权重
    ///
    /// 质量报告-修改维度权限
    @inlinable
    public func modifyDimensionWeight(weightInfoList: [WeightInfo], projectId: String, refresh: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDimensionWeightResponse> {
        self.modifyDimensionWeight(.init(weightInfoList: weightInfoList, projectId: projectId, refresh: refresh), region: region, logger: logger, on: eventLoop)
    }

    /// 修改维度权重
    ///
    /// 质量报告-修改维度权限
    @inlinable
    public func modifyDimensionWeight(weightInfoList: [WeightInfo], projectId: String, refresh: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDimensionWeightResponse {
        try await self.modifyDimensionWeight(.init(weightInfoList: weightInfoList, projectId: projectId, refresh: refresh), region: region, logger: logger, on: eventLoop)
    }
}
