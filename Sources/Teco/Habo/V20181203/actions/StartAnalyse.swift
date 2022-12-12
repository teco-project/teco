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

extension Habo {
    /// StartAnalyse请求参数结构体
    public struct StartAnalyseRequest: TCRequestModel {
        /// 购买服务后获得的授权帐号，用于保证请求有效性
        public let pk: String
        
        /// 样本md5，用于对下载获得的样本完整性进行校验
        public let md5: String
        
        /// 待分析样本下载地址
        public let dlUrl: String
        
        public init (pk: String, md5: String, dlUrl: String) {
            self.pk = pk
            self.md5 = md5
            self.dlUrl = dlUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case pk = "Pk"
            case md5 = "Md5"
            case dlUrl = "DlUrl"
        }
    }
    
    /// StartAnalyse返回参数结构体
    public struct StartAnalyseResponse: TCResponseModel {
        /// 接口调用状态，1表示成功，非1表示失败
        public let status: Int64
        
        /// 成功时返回success，失败时返回具体的失败原因
        public let info: String
        
        /// 保留字段
        public let data: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 分析样本
    ///
    /// 上传样本到哈勃进行分析，异步生成分析日志。
    @inlinable
    public func startAnalyse(_ input: StartAnalyseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartAnalyseResponse > {
        self.client.execute(action: "StartAnalyse", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分析样本
    ///
    /// 上传样本到哈勃进行分析，异步生成分析日志。
    @inlinable
    public func startAnalyse(_ input: StartAnalyseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAnalyseResponse {
        try await self.client.execute(action: "StartAnalyse", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
