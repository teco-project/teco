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

extension Mmps {
    /// DescribeFlySecMiniAppReportUrl请求参数结构体
    public struct DescribeFlySecMiniAppReportUrlRequest: TCRequestModel {
        /// 任务id
        public let taskID: String
        
        /// 小程序appid
        public let miniAppID: String
        
        /// 诊断方式 1:基础诊断，2:深度诊断
        public let mode: Int64
        
        /// 诊断报告类型 0:基础诊断报告，1:总裁版诊断报告，2:诊断报告json结果
        public let reportType: Int64?
        
        public init (taskID: String, miniAppID: String, mode: Int64, reportType: Int64? = nil) {
            self.taskID = taskID
            self.miniAppID = miniAppID
            self.mode = mode
            self.reportType = reportType
        }
        
        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case miniAppID = "MiniAppID"
            case mode = "Mode"
            case reportType = "ReportType"
        }
    }
    
    /// DescribeFlySecMiniAppReportUrl返回参数结构体
    public struct DescribeFlySecMiniAppReportUrlResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64
        
        /// 诊断报告下载链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case url = "Url"
            case requestId = "RequestId"
        }
    }
    
    /// 获取诊断任务报告链接
    ///
    /// 获取翼扬诊断任务报告链接地址
    @inlinable
    public func describeFlySecMiniAppReportUrl(_ input: DescribeFlySecMiniAppReportUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlySecMiniAppReportUrlResponse > {
        self.client.execute(action: "DescribeFlySecMiniAppReportUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取诊断任务报告链接
    ///
    /// 获取翼扬诊断任务报告链接地址
    @inlinable
    public func describeFlySecMiniAppReportUrl(_ input: DescribeFlySecMiniAppReportUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppReportUrlResponse {
        try await self.client.execute(action: "DescribeFlySecMiniAppReportUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
