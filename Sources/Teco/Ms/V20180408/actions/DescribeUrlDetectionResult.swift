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

extension Ms {
    /// 移动安全-查询网址检测结果服务
    ///
    /// 移动安全-网址检测服务
    @inlinable
    public func describeUrlDetectionResult(_ input: DescribeUrlDetectionResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUrlDetectionResultResponse > {
        self.client.execute(action: "DescribeUrlDetectionResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 移动安全-查询网址检测结果服务
    ///
    /// 移动安全-网址检测服务
    @inlinable
    public func describeUrlDetectionResult(_ input: DescribeUrlDetectionResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUrlDetectionResultResponse {
        try await self.client.execute(action: "DescribeUrlDetectionResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUrlDetectionResult请求参数结构体
    public struct DescribeUrlDetectionResultRequest: TCRequestModel {
        /// 查询的网址
        public let url: String
        
        public init (url: String) {
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case url = "Url"
        }
    }
    
    /// DescribeUrlDetectionResult返回参数结构体
    public struct DescribeUrlDetectionResultResponse: TCResponseModel {
        /// [查询结果]查询结果；枚举值：0 查询成功，否则查询失败
        public let resultCode: Int64
        
        /// [固定信息]响应协议版本号
        public let respVer: Int64
        
        /// [查询结果]url恶意状态
        /// 枚举值：
        /// 0-1：未知，访问暂无风险。
        /// 2 ：	风险网址，具体的恶意类型定义参考恶意大类EvilClass字段。
        /// 3-4：安全，访问无风险。
        /// 注意：查询结果EvilClass字段在Urltype=2时，才有意义。
        public let urlType: Int64
        
        /// [查询结果]url恶意类型大类:{
        ///     "1": "社工欺诈（仿冒、账号钓鱼、中奖诈骗）",
        ///     "2": "信息诈骗（虚假充值、虚假兼职、虚假金融投资、虚假信用卡代办、网络赌博诈骗）",
        ///     "3": "虚假销售（男女保健美容减肥产品、电子产品、虚假广告、违法销售）",
        ///     "4": "恶意文件（病毒文件，木马文件，恶意apk文件的下载链接以及站点，挂马网站）",
        ///     "5": "博彩网站（博彩网站，在线赌博网站）",
        ///     "6": "色情网站（涉嫌传播色情内容，提供色情服务的网站）"
        ///   }
        public let evilClass: Int64
        
        /// 该字段暂为空
        public let evilType: Int64
        
        /// 该字段暂为空
        public let level: Int64
        
        /// [查询详情]url检出时间；时间戳
        public let detectTime: Int64
        
        /// 该字段暂为空
        public let wording: String
        
        /// 该字段暂为空
        public let wordingTitle: String
        
        /// [查询结果]url恶意状态说明；为UrlType字段值对应的说明
        public let urlTypeDesc: String
        
        /// [查询结果]url恶意大类说明；为EvilClass字段值对应的说明
        public let evilClassDesc: String
        
        /// 该字段暂为空
        public let evilTypeDesc: String
        
        /// 该字段暂为空
        public let levelDesc: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case respVer = "RespVer"
            case urlType = "UrlType"
            case evilClass = "EvilClass"
            case evilType = "EvilType"
            case level = "Level"
            case detectTime = "DetectTime"
            case wording = "Wording"
            case wordingTitle = "WordingTitle"
            case urlTypeDesc = "UrlTypeDesc"
            case evilClassDesc = "EvilClassDesc"
            case evilTypeDesc = "EvilTypeDesc"
            case levelDesc = "LevelDesc"
            case requestId = "RequestId"
        }
    }
}