/mob/verb/pray(msg as text)
	set category = "IC"
	set name = "Pray"

	if (say_disabled)	//This is here to try to identify lag problems
		usr << "<span class = 'red'>Speech is currently admin-disabled.</span>"
		return

	msg = sanitize(msg)
	if (!msg)	return

	if (usr.client)
		if (usr.client.prefs.muted & MUTE_PRAY)
			usr << "<span class = 'red'>You cannot pray (muted).</span>"
			return
		if (client.handle_spam_prevention(msg,MUTE_PRAY))
			return

	var/image/cross = image('icons/obj/storage.dmi',"bible")
	msg = "<span class = 'notice'>\icon[cross] <b><font color=purple>PRAY: </font>[key_name(src, TRUE)] (<A HREF='?_src_=holder;adminmoreinfo=\ref[src]'>?</A>) (<A HREF='?_src_=holder;adminplayeropts=\ref[src]'>PP</A>) (<A HREF='?_src_=vars;Vars=\ref[src]'>VV</A>) (<A HREF='?_src_=holder;subtlemessage=\ref[src]'>SM</A>) ([admin_jump_link(src, src)]) (<A HREF='?_src_=holder;secretsadmin=check_antagonist'>CA</A>) (<A HREF='?_src_=holder;adminspawncookie=\ref[src]'>SC</a>):</b> [msg]</span>"
	var/mob/living/human/H = src
	for (var/client/C in admins)
		if (R_ADMIN & C.holder.rights)
			if (C.is_preference_enabled(/datum/client_preference/admin/show_chat_prayers))
				if (H.original_job.is_religious == TRUE) //check if the prayers come from religious heads, or garbage plebians
					C << msg
					C << "<i>This was sent by a <big>religious leader</big>. Their prayers are important!</i>"
				else 
					C << msg
					C << "<i>This was sent by a plebian.</i>"

	usr << "Your prayers have been received by the gods."


	//log_admin("HELP: [key_name(src)]: [msg]")
