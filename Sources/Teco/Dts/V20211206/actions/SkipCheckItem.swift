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

extension Dts {
    /// SkipCheckItem请求参数结构体
    public struct SkipCheckItemRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        /// 需要跳过校验项的步骤id，需要通过DescribeMigrationCheckJob接口返回StepInfo[i].StepId字段获取，例如：["OptimizeCheck"]
        public let stepIds: [String]

        /// 当出现外键依赖检查导致校验不通过时、可以通过该字段选择是否迁移外键依赖，当StepIds包含ConstraintCheck且该字段值为shield时表示不迁移外键依赖、当StepIds包含ConstraintCheck且值为migrate时表示迁移外键依赖
        public let foreignKeyFlag: String?

        public init(jobId: String, stepIds: [String], foreignKeyFlag: String? = nil) {
            self.jobId = jobId
            self.stepIds = stepIds
            self.foreignKeyFlag = foreignKeyFlag
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case stepIds = "StepIds"
            case foreignKeyFlag = "ForeignKeyFlag"
        }
    }

    /// SkipCheckItem返回参数结构体
    public struct SkipCheckItemResponse: TCResponseModel {
        /// 跳过的提示信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case message = "Message"
            case requestId = "RequestId"
        }
    }

    /// 跳过迁移校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable
    public func skipCheckItem(_ input: SkipCheckItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SkipCheckItemResponse> {
        self.client.execute(action: "SkipCheckItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跳过迁移校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable
    public func skipCheckItem(_ input: SkipCheckItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SkipCheckItemResponse {
        try await self.client.execute(action: "SkipCheckItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跳过迁移校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable
    public func skipCheckItem(jobId: String, stepIds: [String], foreignKeyFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SkipCheckItemResponse> {
        self.skipCheckItem(.init(jobId: jobId, stepIds: stepIds, foreignKeyFlag: foreignKeyFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 跳过迁移校验检查项
    ///
    /// 本接口用于校验检查项不通过后，可进行跳过此校验项操作，后端将不再校验该项。任何校验步骤都是不应该跳过的，通过校验是能正确执行的前置条件。支持跳过的产品及链路的校验项可 [参考文档](https://cloud.tencent.com/document/product/571/61639)。
    @inlinable
    public func skipCheckItem(jobId: String, stepIds: [String], foreignKeyFlag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SkipCheckItemResponse {
        try await self.skipCheckItem(.init(jobId: jobId, stepIds: stepIds, foreignKeyFlag: foreignKeyFlag), region: region, logger: logger, on: eventLoop)
    }
}
