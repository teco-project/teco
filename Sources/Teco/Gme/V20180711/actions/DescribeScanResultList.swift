//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gme {
    /// DescribeScanResultList请求参数结构体
    public struct DescribeScanResultListRequest: TCRequestModel {
        /// 应用 ID，登录[控制台](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        public let bizId: UInt64

        /// 查询的任务 ID 列表，任务 ID 列表最多支持 100 个。
        public let taskIdList: [String]

        /// 任务返回结果数量，默认10，上限500。大文件任务忽略此参数，返回全量结果
        public let limit: UInt64?

        public init(bizId: UInt64, taskIdList: [String], limit: UInt64? = nil) {
            self.bizId = bizId
            self.taskIdList = taskIdList
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case taskIdList = "TaskIdList"
            case limit = "Limit"
        }
    }

    /// DescribeScanResultList返回参数结构体
    public struct DescribeScanResultListResponse: TCResponseModel {
        /// 要查询的语音检测任务的结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DescribeScanResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询语音检测结果
    ///
    /// 本接口(DescribeScanResultList)用于查询语音检测结果，查询任务列表最多支持100个。
    /// <p style="color:red">如果在提交语音检测任务时未设置 Callback 字段，则需要通过本接口获取检测结果</p>
    @inlinable
    public func describeScanResultList(_ input: DescribeScanResultListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScanResultListResponse > {
        self.client.execute(action: "DescribeScanResultList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询语音检测结果
    ///
    /// 本接口(DescribeScanResultList)用于查询语音检测结果，查询任务列表最多支持100个。
    /// <p style="color:red">如果在提交语音检测任务时未设置 Callback 字段，则需要通过本接口获取检测结果</p>
    @inlinable
    public func describeScanResultList(_ input: DescribeScanResultListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanResultListResponse {
        try await self.client.execute(action: "DescribeScanResultList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询语音检测结果
    ///
    /// 本接口(DescribeScanResultList)用于查询语音检测结果，查询任务列表最多支持100个。
    /// <p style="color:red">如果在提交语音检测任务时未设置 Callback 字段，则需要通过本接口获取检测结果</p>
    @inlinable
    public func describeScanResultList(bizId: UInt64, taskIdList: [String], limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScanResultListResponse > {
        self.describeScanResultList(DescribeScanResultListRequest(bizId: bizId, taskIdList: taskIdList, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询语音检测结果
    ///
    /// 本接口(DescribeScanResultList)用于查询语音检测结果，查询任务列表最多支持100个。
    /// <p style="color:red">如果在提交语音检测任务时未设置 Callback 字段，则需要通过本接口获取检测结果</p>
    @inlinable
    public func describeScanResultList(bizId: UInt64, taskIdList: [String], limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanResultListResponse {
        try await self.describeScanResultList(DescribeScanResultListRequest(bizId: bizId, taskIdList: taskIdList, limit: limit), logger: logger, on: eventLoop)
    }
}
