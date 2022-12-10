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

extension Cpdp {
    /// 直播平台-查询主播签约信息
    @inlinable
    public func queryAnchorContractInfo(_ input: QueryAnchorContractInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryAnchorContractInfoResponse > {
        self.client.execute(action: "QueryAnchorContractInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播平台-查询主播签约信息
    @inlinable
    public func queryAnchorContractInfo(_ input: QueryAnchorContractInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAnchorContractInfoResponse {
        try await self.client.execute(action: "QueryAnchorContractInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryAnchorContractInfo请求参数结构体
    public struct QueryAnchorContractInfoRequest: TCRequestModel {
        /// 起始时间，格式为yyyy-MM-dd
        public let beginTime: String
        
        /// 起始时间，格式为yyyy-MM-dd
        public let endTime: String
        
        public init (beginTime: String, endTime: String) {
            self.beginTime = beginTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }
    }
    
    /// QueryAnchorContractInfo返回参数结构体
    public struct QueryAnchorContractInfoResponse: TCResponseModel {
        /// 签约主播数据
        public let anchorContractInfoList: [AnchorContractInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case anchorContractInfoList = "AnchorContractInfoList"
            case requestId = "RequestId"
        }
    }
}
