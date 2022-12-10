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

extension Pds {
    /// 信誉分，1-5从低到高
    public struct Score: TCOutputModel {
        /// 信誉分，1-5从低到高
        public let star: Int64
        
        enum CodingKeys: String, CodingKey {
            case star = "Star"
        }
    }
    
    /// 用户信息
    public struct UserInfos: TCInputModel {
        /// 用户的手机号
        public let phoneNum: String
        
        /// 用户的微信OpenID
        public let openid: String
        
        /// 用户移动设备的客户端IP
        public let ip: String?
        
        /// 用户WiFi的BSSID
        public let wiFiBssid: String?
        
        /// 用户Android设备的IMEI
        public let imei: String?
        
        /// 用户Android设备的OAID
        public let oaid: String?
        
        /// 用户iOS设备的IDFA
        public let idfa: String?
        
        public init (phoneNum: String, openid: String, ip: String?, wiFiBssid: String?, imei: String?, oaid: String?, idfa: String?) {
            self.phoneNum = phoneNum
            self.openid = openid
            self.ip = ip
            self.wiFiBssid = wiFiBssid
            self.imei = imei
            self.oaid = oaid
            self.idfa = idfa
        }
        
        enum CodingKeys: String, CodingKey {
            case phoneNum = "PhoneNum"
            case openid = "Openid"
            case ip = "IP"
            case wiFiBssid = "WiFiBssid"
            case imei = "IMEI"
            case oaid = "OAID"
            case idfa = "IDFA"
        }
    }
}
