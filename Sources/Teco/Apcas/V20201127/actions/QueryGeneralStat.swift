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

extension Apcas {
    /// QueryGeneralStat请求参数结构体
    public struct QueryGeneralStatRequest: TCRequestModel {
        /// 请求类型:1,人群特征洞察统计 2购车意向预测统计
        public let type: UInt64
        
        public init (type: UInt64) {
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
        }
    }
    
    /// QueryGeneralStat返回参数结构体
    public struct QueryGeneralStatResponse: TCResponseModel {
        /// 调用量信息
        public let generalStat: GeneralStat
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case generalStat = "GeneralStat"
            case requestId = "RequestId"
        }
    }
    
    /// 总统计数据
    ///
    /// 获取日/月/周/总调用量统计数据
    @inlinable
    public func queryGeneralStat(_ input: QueryGeneralStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryGeneralStatResponse > {
        self.client.execute(action: "QueryGeneralStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 总统计数据
    ///
    /// 获取日/月/周/总调用量统计数据
    @inlinable
    public func queryGeneralStat(_ input: QueryGeneralStatRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryGeneralStatResponse {
        try await self.client.execute(action: "QueryGeneralStat", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
