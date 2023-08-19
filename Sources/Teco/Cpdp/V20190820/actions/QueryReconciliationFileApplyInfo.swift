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

extension Cpdp {
    /// QueryReconciliationFileApplyInfo请求参数结构体
    public struct QueryReconciliationFileApplyInfoRequest: TCRequest {
        /// 申请对账文件的任务ID。
        public let applyFileId: String

        /// 环境名。
        /// __release__: 现网环境
        /// __sandbox__: 沙箱环境
        /// __development__: 开发环境
        /// _缺省: release_
        public let midasEnvironment: String?

        public init(applyFileId: String, midasEnvironment: String? = nil) {
            self.applyFileId = applyFileId
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case applyFileId = "ApplyFileId"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// QueryReconciliationFileApplyInfo返回参数结构体
    public struct QueryReconciliationFileApplyInfoResponse: TCResponse {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryReconciliationFileApplyInfoResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-查询对账文件申请结果
    @inlinable
    public func queryReconciliationFileApplyInfo(_ input: QueryReconciliationFileApplyInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryReconciliationFileApplyInfoResponse> {
        self.client.execute(action: "QueryReconciliationFileApplyInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询对账文件申请结果
    @inlinable
    public func queryReconciliationFileApplyInfo(_ input: QueryReconciliationFileApplyInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryReconciliationFileApplyInfoResponse {
        try await self.client.execute(action: "QueryReconciliationFileApplyInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-查询对账文件申请结果
    @inlinable
    public func queryReconciliationFileApplyInfo(applyFileId: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryReconciliationFileApplyInfoResponse> {
        self.queryReconciliationFileApplyInfo(.init(applyFileId: applyFileId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询对账文件申请结果
    @inlinable
    public func queryReconciliationFileApplyInfo(applyFileId: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryReconciliationFileApplyInfoResponse {
        try await self.queryReconciliationFileApplyInfo(.init(applyFileId: applyFileId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
