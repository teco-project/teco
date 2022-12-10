//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mmps {
    /// 获取诊断任务列表
    ///
    /// 获取翼扬安全诊断任务列表
    @inlinable
    public func describeFlySecMiniAppScanTaskList(_ input: DescribeFlySecMiniAppScanTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlySecMiniAppScanTaskListResponse > {
        self.client.execute(action: "DescribeFlySecMiniAppScanTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取诊断任务列表
    ///
    /// 获取翼扬安全诊断任务列表
    @inlinable
    public func describeFlySecMiniAppScanTaskList(_ input: DescribeFlySecMiniAppScanTaskListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanTaskListResponse {
        try await self.client.execute(action: "DescribeFlySecMiniAppScanTaskList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeFlySecMiniAppScanTaskList请求参数结构体
    public struct DescribeFlySecMiniAppScanTaskListRequest: TCRequestModel {
        /// 诊断方式 1:基础诊断，2:深度诊断
        public let mode: Int64
        
        /// 诊断状态 -1:查询全部, 0:排队中, 1:成功, 2:失败, 3:进行中
        public let status: Int64
        
        /// 查询数量, 0:查询所有, 其他值:最近几次的诊断数量
        public let size: Int64
        
        /// 小程序appid(为空的时候,则查询当前用户诊断的所有小程序)
        public let miniAppID: String?
        
        public init (mode: Int64, status: Int64, size: Int64, miniAppID: String?) {
            self.mode = mode
            self.status = status
            self.size = size
            self.miniAppID = miniAppID
        }
        
        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
            case status = "Status"
            case size = "Size"
            case miniAppID = "MiniAppID"
        }
    }
    
    /// DescribeFlySecMiniAppScanTaskList返回参数结构体
    public struct DescribeFlySecMiniAppScanTaskListResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64
        
        /// 诊断任务数据列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [FlySecMiniAppTaskData]?
        
        /// 诊断任务数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}